//
// Created by shipeng on 17-10-8.
//


#include "RPCServer.h"


void stat2thrift(struct stat* stbuf, thrift_stat &tstbuf) {
  tstbuf.st_dev = (int64_t) stbuf->st_dev;
  tstbuf.st_ino = (int64_t) stbuf->st_ino;
  tstbuf.st_nlink = (int64_t) stbuf->st_nlink;
  tstbuf.st_mode = stbuf->st_mode;
  tstbuf.st_uid = stbuf->st_uid;
  tstbuf.st_gid = stbuf->st_gid;
  tstbuf.__pad0 = stbuf->__pad0;
  tstbuf.st_rdev = (int64_t) stbuf->st_rdev;
  tstbuf.st_size = (int64_t) stbuf->st_size;
  tstbuf.st_blksize = (int64_t) stbuf->st_blksize;
  tstbuf.st_blocks = (int64_t) stbuf->st_blocks;
  tstbuf.st_atim.tv_nsec = (int64_t) stbuf->st_atim.tv_nsec;
  tstbuf.st_atim.tv_sec = (int64_t) stbuf->st_atim.tv_sec;
  tstbuf.st_mtim.tv_nsec = (int64_t) stbuf->st_mtim.tv_nsec;
  tstbuf.st_mtim.tv_sec = (int64_t) stbuf->st_mtim.tv_sec;
  tstbuf.st_ctim.tv_nsec = (int64_t) stbuf->st_ctim.tv_nsec;
  tstbuf.st_ctim.tv_sec = (int64_t) stbuf->st_ctim.tv_sec;
  tstbuf.__glibc_reserved0 = (int64_t) stbuf->__glibc_reserved[0];
  tstbuf.__glibc_reserved1 = (int64_t) stbuf->__glibc_reserved[1];
  tstbuf.__glibc_reserved2 = (int64_t) stbuf->__glibc_reserved[2];
}


using boost::shared_ptr;

class NFSHandler : virtual public NFSIf {
public:

  FileSystemInterface fileSystemInterface;
  std::string prefix;

  NFSHandler() {

  }

  void nfs_mount(thrift_file_handler& _return, const std::string& path) {
    printf("nfs_mount\n");
    this->prefix = path;
    __ino_t inode = fileSystemInterface.check(path.c_str());
    // use 1 in the case
    _return.system_id = 1;
    _return.generation_number = 1;
    _return.inode = (int64_t) inode;
  }

  void ping() {
    // Your implementation goes here
    printf("ping\n");
  }

  void nfs_readdir(thrift_readdir_reply& _return, const std::string& tpath) {
    // Your implementation goes here
    std::vector<thrift_dir_entry> entries;
    _return.ret = fileSystemInterface.fuse_readdir((prefix+tpath).c_str(), entries);
    _return.dir_entries = entries;
  }

  int32_t nfs_mkdir(const std::string& tpath, const int32_t mode) {
    // Your implementation goes here
    int ret;
    ret = fileSystemInterface.fuse_mkdir((prefix + tpath).c_str(), mode);
    printf("nfs_mkdir\n");
    return ret;
  }

  int32_t nfs_rmdir(const std::string& tpath) {
    // Your implementation goes here
    int ret;
    ret = fileSystemInterface.fuse_rmdir((prefix + tpath).c_str());
    printf("nfs_rmdir\n");
    return ret;
  }

  void nfs_getattr(thrift_getattr_reply& _return, const std::string& tpath) {
    // Your implementation goes here
    struct stat stbuf;
    //int ret = lstat((prefix + tpath).c_str(), &stbuf);
    int ret = fileSystemInterface.fuse_getattr((prefix+tpath).c_str(), &stbuf);
    _return.ret = ret;
    stat2thrift(&stbuf, _return.tstbuf);
  }

  void lookup(thrift_file_handler& _return, const thrift_file_handler& fh, const std::string& path) {
    //1 search for fh
    //2 in the fh_path, search path
    //3 check the cache with path -> vnode
    //4  __ino_t inode = fileSystemInterface.check(path.c_str()); create a fh, vnode, cache the vnode
    // return fh
  }





};

RPCServer::RPCServer(int port) {



  shared_ptr<NFSHandler> handler(new NFSHandler());
  this->processor = shared_ptr<TProcessor>(new NFSProcessor(handler));
  this->serverTransport = shared_ptr<TServerTransport>(new TServerSocket(port));
  this->transportFactory = shared_ptr<TTransportFactory>(new TBufferedTransportFactory());
  this->protocolFactory = shared_ptr<TProtocolFactory>(new TBinaryProtocolFactory());

  const int maxConnection = 64;

  this->threadFactory = shared_ptr<concurrency::PosixThreadFactory>(new concurrency::PosixThreadFactory());
  this->threadManager =  concurrency::ThreadManager::newSimpleThreadManager(maxConnection);
  this->threadManager->threadFactory(this->threadFactory);
  this->threadManager->start();


}

void RPCServer::start() {
  TThreadPoolServer server(processor, serverTransport, transportFactory, protocolFactory, threadManager);
  server.serve();
}
