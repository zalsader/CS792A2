//
// Created by shipeng on 17-10-8.
//


#include "RPCServer.h"


using boost::shared_ptr;

class NFSHandler : virtual public NFSIf {
private:
    CacheServer cacheServer;

    FileSystemInterface fileSystemInterface;

    WriteCacheServer writeCache;

    thrift_file_handler rootFh;

    bool allowCommit = true;

public:
    NFSHandler(std::string root, bool allowCommit) : fileSystemInterface(root), cacheServer(root) {
        this->allowCommit = allowCommit;
        __ino_t inode = fileSystemInterface.getInode("");
        try {
            cacheServer.get(rootFh, inode);
        } catch (int e) {
            cacheServer.add(rootFh, inode, "");
        }
    }

    void root(thrift_file_handler_reply& _return) {
        _return.fh = rootFh;
        _return.ret = 0;
        printf("root\n");
    }

    void mount(thrift_file_handler_reply& _return, const std::string &path) {
        _return.fh = rootFh;
        _return.ret = 0;
        printf("mount\n");
    }

    void lookup(thrift_file_handler_reply& _return, const thrift_file_handler &fh, const std::string &path) {
        try {
            std::string relPath = cacheServer.getPath(fh);
            // Client may send empty path "" to server
            // This is used to check the file handler is valid or not
            //if (path != std::string("")
            relPath += '/' + path;
            __ino_t inode = fileSystemInterface.getInode(relPath.c_str());
            try {
                cacheServer.get(_return.fh, inode);
            } catch (int e) {
                cacheServer.add(_return.fh, inode, relPath);
            }
        } catch (int e) {
            _return.ret = -ENOENT;
        }
    }

    void readdir(thrift_readdir_reply &_return, const thrift_file_handler &fh) {
        try {
            std::string path = cacheServer.getPath(fh);
            std::vector<thrift_dir_entry> entries;
            _return.ret = fileSystemInterface.readdir(path, entries);
            _return.dir_entries = entries;
            printf("readdir\n");
        } catch (int e) {
            _return.ret = -ENOENT;
        }
    }

    void mkdir(thrift_file_handler_reply &_return, const thrift_file_handler &fh, const std::string &name) {
        try {
            std::string path = cacheServer.getPath(fh);
            path += '/' + name;
            _return.ret = fileSystemInterface.mkdir(path, 0777);
            __ino_t inode = fileSystemInterface.getInode(path);
            if (inode != 0) {
                cacheServer.add(_return.fh, inode, path);
            }
        } catch (int e) {
            _return.ret = -ENONET;
        }
        printf("mkdir\n");
    }

    int32_t rmdir(const thrift_file_handler &fh) {
        try {
            std::string path = cacheServer.getPath(fh);
            int32_t ret = fileSystemInterface.rmdir(path);
            cacheServer.remove(fh); // TODO handle errors
            printf("rmdir\n");
            return ret;
        } catch (int e) {
            return -ENONET;
        }
    }

    void getattr(thrift_getattr_reply &_return, const thrift_file_handler &fh) {
        try {
            std::string path = cacheServer.getPath(fh);
            int ret = fileSystemInterface.getattr(path, _return.tstbuf);
            _return.ret = ret;
            printf("getattr\n");
        } catch (int e){
            _return.ret = -ENONET;
        }
//      std::cout << "get attr return " << _return << std::endl;
    }

    int32_t unlink(const thrift_file_handler &fh) {
        try {
            std::string path = cacheServer.getPath(fh);
            int32_t ret = fileSystemInterface.unlink(path);
            cacheServer.remove(fh); // TODO handle errors
            printf("unlink\n");
            return ret;
        } catch (int e) {
            return -ENONET;
        }
    }

    int32_t rename(const thrift_file_handler &fh, const std::string &toname) {
        try {
            std::string path = cacheServer.getPath(fh);
            int32_t ret = fileSystemInterface.rename(path, toname);
            cacheServer.rename(fh, toname);
            // TODO implement
            printf("rename\n");
            return ret;
        } catch (int e) {
            return -ENONET;
        }
    }

    void create(thrift_file_handler_reply& _return, const thrift_file_handler& fh, const std::string& name) {
        try {
            std::string path = cacheServer.getPath(fh);
            path += '/' + name;
            _return.ret = fileSystemInterface.create(path);
            __ino_t inode = fileSystemInterface.getInode(path);
            if (inode != 0) {
                cacheServer.add(_return.fh, inode, path);
            }
            printf("create\n");
        } catch (int e) {
            _return.ret = -ENONET;
        }
    }

    void read(thrift_read_reply& _return, const thrift_file_handler& fh, const int64_t size, const int64_t offset) {
        try {
            std::string path = cacheServer.getPath(fh);
            fileSystemInterface.read(_return, path, size, offset);
            std::cout << "Reading path " << path << std::endl;
            printf("read\n");
        } catch (int e) {
            _return.ret = -ENONET;
        }
//      std::cout << "Return In Read " << _return << std::endl;
    }

    void write(thrift_write_reply& _return, const thrift_file_handler& fh, const std::string& buf, const int64_t size, const int64_t offset) {
        try {
            std::string path = cacheServer.getPath(fh);
            if (allowCommit) {
                writeCache.write(path, buf, size, offset);
                _return.ret = size;
            } else {
                _return.ret = fileSystemInterface.write(path, buf, size, offset);
            }
//            printf("write\n");
        } catch (int e) {
            _return.ret = -ENONET;
        }
        _return.write_verifier = writeCache.getWriteVerifier();
    }

    void fsync(thrift_write_reply& _return, const thrift_file_handler& fh) {
        try {
            std::string path = cacheServer.getPath(fh);
            _return.ret = fileSystemInterface.writeAll(path, writeCache.getWriteEntries(path));
            writeCache.clearWriteEntries(path);
            std::cout << "fsync " << path << std::endl;
        } catch (int e) {
            _return.ret = -ENONET;
        }
        std::cout << "fsync ret " << _return.ret << std::endl;
        _return.write_verifier = writeCache.getWriteVerifier();
    }


};

RPCServer::RPCServer(int port, std::string mountRoot, bool allowCommit) {


    shared_ptr <NFSHandler> handler(new NFSHandler(mountRoot, allowCommit));
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
