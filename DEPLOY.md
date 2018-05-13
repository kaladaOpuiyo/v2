# Updated Dev Deployment Configuration 

1) As mentioned in the readme, make sure the unison version installed locally is the same version as the vagrant installation. For this build, unison version 2.40.102 was install from the binary file. Installation occurs in provision.sh
[Instructions for installing version 2.48.4](https://eric.blog/2017/08/25/how-to-install-unison-2-48-on-ubuntu/)

2) Updated apt-key from pgp.mit.edu to keyserver.ubuntu.com. see /vagrant/docker.sh
3) Updated complie instructions for protobuf
4) Added installation for migrate cli tool [migrate cli installtion](https://github.com/mattes/migrate/blob/master/cli/README.md)
5) updated db migration instructions
6) Updated vagrant/bazel.sh to install version 0.4.4 per .travis file

 #TODO: Convert cluster management tool from HyperKube to Kops
 #TODO: Look for was to improve protobuf compile time
 #TODO: Update Bazel to current release. Bazel drop tools/build_defs/docker:docker.bzl in a future release