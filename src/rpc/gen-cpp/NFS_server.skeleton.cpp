// This autogenerated skeleton file illustrates how to build a server.
// You should copy it to another filename to avoid overwriting it.

#include "NFS.h"
#include <thrift/protocol/TBinaryProtocol.h>
#include <thrift/server/TSimpleServer.h>
#include <thrift/transport/TServerSocket.h>
#include <thrift/transport/TBufferTransports.h>

using namespace ::apache::thrift;
using namespace ::apache::thrift::protocol;
using namespace ::apache::thrift::transport;
using namespace ::apache::thrift::server;

using boost::shared_ptr;

class NFSHandler : virtual public NFSIf {
 public:
  NFSHandler() {
    // Your initialization goes here
  }

  void nfs_readdir(thrift_readdir_reply& _return, const std::string& tpath) {
    // Your implementation goes here
    printf("nfs_readdir\n");
  }

  int32_t nfs_mkdir(const std::string& tpath, const int32_t mode) {
    // Your implementation goes here
    printf("nfs_mkdir\n");
  }

  int32_t nfs_rmdir(const std::string& tpath) {
    // Your implementation goes here
    printf("nfs_rmdir\n");
  }

  void nfs_getattr(thrift_getattr_reply& _return, const std::string& tpath) {
    // Your implementation goes here
    printf("nfs_getattr\n");
  }

  void ping() {
    // Your implementation goes here
    printf("ping\n");
  }

};

int main(int argc, char **argv) {
  int port = 9090;
  shared_ptr<NFSHandler> handler(new NFSHandler());
  shared_ptr<TProcessor> processor(new NFSProcessor(handler));
  shared_ptr<TServerTransport> serverTransport(new TServerSocket(port));
  shared_ptr<TTransportFactory> transportFactory(new TBufferedTransportFactory());
  shared_ptr<TProtocolFactory> protocolFactory(new TBinaryProtocolFactory());

  TSimpleServer server(processor, serverTransport, transportFactory, protocolFactory);
  server.serve();
  return 0;
}

