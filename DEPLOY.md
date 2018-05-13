# Updated Dev Deployment Configuration

1) As mentioned in the readme, make sure the unison version installed locally is the same version as the vagrant installation. For this build, unison version 2.40.102 was install. Installation occurs in provision.sh
2) Updated keyserver from pgp.mit.edu to keyserver.ubuntu.com. see /vagrant/docker.sh
3) Updated compile instructions for protobuf
4) Added installation for migrate cli tool [migrate cli installtion](https://github.com/mattes/migrate/blob/master/cli/README.md)
5) updated db migration instructions
6) Updated vagrant/bazel.sh to install version 0.4.4 per .travis file

## TODO

- Convert cluster management tool from HyperKube to Kops
- Look for was to improve protobuf compile time
- Update Bazel to current release. Bazel drop tools/build_defs/docker:docker.bzl in a future release
- Test functionality of application
