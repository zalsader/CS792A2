//
// Created by shipeng on 17-10-8.
//


#include "RPCServer.h"


using boost::shared_ptr;

class NFSHandler : virtual public NFSIf {
private:
    CacheServer cacheServer;

    FileSystemInterface fileSystemInterface;

    thrift_file_handler rootFh;

public:
    NFSHandler(std::string root) : fileSystemInterface(root) {
        __ino_t inode = fileSystemInterface.getInode("");
        cacheServer.add(rootFh, inode, "");
    }

    void root(thrift_file_handler &_return) {
        _return = rootFh;
        printf("root\n");
    }

    void mount(thrift_file_handler &_return, const std::string &path) {
        _return = rootFh;
        printf("mount\n");
    }

    void lookup(thrift_file_handler &_return, const thrift_file_handler &fh, const std::string &path) {
        std::string relPath = cacheServer.getPath(fh);
        relPath += '/' + path;
        __ino_t inode = fileSystemInterface.getInode(relPath.c_str());
        if (inode != 0) {
            cacheServer.get(_return, inode);
            if (_return.inode == 0) {
                cacheServer.add(_return, inode, relPath);
            }
        }
        std::cout << "lookup " << path << std::endl;
    }

    void readdir(thrift_readdir_reply &_return, const thrift_file_handler &fh) {
        std::string path = cacheServer.getPath(fh);
        std::vector <thrift_dir_entry> entries;
        _return.ret = fileSystemInterface.readdir(path, entries);
        _return.dir_entries = entries;
        printf("readdir\n");
    }

    void mkdir(thrift_file_handler_reply &_return, const thrift_file_handler &fh, const std::string &name) {
        std::string relPath = cacheServer.getPath(fh);
        relPath += '/' + name;
        _return.ret = fileSystemInterface.mkdir(relPath, 1);
        __ino_t inode = fileSystemInterface.getInode(relPath.c_str());
        if (inode != 0) {
            cacheServer.add(_return.fh, inode, relPath);
        }
        printf("mkdir\n");
    }

    int32_t rmdir(const thrift_file_handler &fh) {
        // Your implementation goes here
        std::string relPath = cacheServer.getPath(fh);
        int32_t ret = fileSystemInterface.rmdir(relPath);
        cacheServer.remove(fh); // TODO handle errors
        printf("rmdir\n");
        return ret;
    }

    void getattr(thrift_getattr_reply &_return, const thrift_file_handler &fh) {
        std::string path = cacheServer.getPath(fh);
        // TODO remove
        std::cout << "Caching ----------------------------------" << std::endl;
        for (auto pair : cacheServer.vnodes) {
            std::cout << pair.first << "------" << pair.second.getPath() << std::endl;
        }
        int ret = fileSystemInterface.getattr(path, _return.tstbuf);
        _return.ret = ret;
        printf("getattr\n");
    }

    int32_t unlink(const thrift_file_handler &fh) {
        // Your implementation goes here
        printf("unlink\n");
    }

    int32_t rename(const thrift_file_handler &fh, const std::string &toname) {
        // Your implementation goes here
        printf("rename\n");
    }

    int32_t open(const thrift_file_handler &fh, const thrift_file_info &fi) {
        // Your implementation goes here
        printf("open\n");
    }

    void read(thrift_read_reply &_return, const thrift_file_handler &fh, const int64_t size, const int64_t offset,
              const thrift_file_info &fi) {
        // Your implementation goes here
        printf("read\n");
    }

    int32_t write(const thrift_file_handler &fh, const std::string &buf, const int64_t size, const int64_t offset,
                  const thrift_file_info &fi) {
        // Your implementation goes here
        printf("write\n");
    }

    int32_t fsync(const thrift_file_handler &fh, const int32_t isdatasync, const thrift_file_info &fi) {
        // Your implementation goes here
        printf("fsync\n");
    }


};

RPCServer::RPCServer(int port, std::string mountRoot) {


    shared_ptr <NFSHandler> handler(new NFSHandler(mountRoot));
    this->processor = shared_ptr<TProcessor>(new NFSProcessor(handler));
    this->serverTransport = shared_ptr<TServerTransport>(new TServerSocket(port));
    this->transportFactory = shared_ptr<TTransportFactory>(new TBufferedTransportFactory());
    this->protocolFactory = shared_ptr<TProtocolFactory>(new TBinaryProtocolFactory());

    const int maxConnection = 64;

    this->threadFactory = shared_ptr<concurrency::PosixThreadFactory>(new concurrency::PosixThreadFactory());
    this->threadManager = concurrency::ThreadManager::newSimpleThreadManager(maxConnection);
    this->threadManager->threadFactory(this->threadFactory);
    this->threadManager->start();


}

void RPCServer::start() {
    TThreadPoolServer server(processor, serverTransport, transportFactory, protocolFactory, threadManager);
    server.serve();
}
