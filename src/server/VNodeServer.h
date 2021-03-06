//
// Created by zalsader on 14/10/17.
//

#ifndef NFS_FUSE_VNODESERVER_H
#define NFS_FUSE_VNODESERVER_H

#include <string>
#include <boost/archive/text_iarchive.hpp>
#include <boost/archive/text_oarchive.hpp>
#include <boost/serialization/serialization.hpp>
#include <boost/serialization/unordered_map.hpp>
#include <boost/serialization/string.hpp>

class VNodeServer {
private:
    friend class boost::serialization::access;
    friend class CacheServer;
    std::string abs_path;
    int generation;
    template<class Archive> void serialize(Archive & ar, const unsigned int version){
        ar & abs_path;
        ar & generation;
    }
public:
    VNodeServer(){generation = std::rand();};
    VNodeServer(std::string path, int gen);
    explicit VNodeServer(std::string path);
    VNodeServer(const VNodeServer& vn);
    VNodeServer& operator=(const VNodeServer& vn);
    int getGeneration();
    std::string getPath();
};


#endif //NFS_FUSE_VNODESERVER_H
