# packaging-example
This repository contains a bunch of files to go along with a SIPHON blog post on Python packaging for Debian/Ubuntu. It is not meant to be run standalone and indeed will not run without additional modification. Full details will be available in the SIPHON blog post, a link to which will be included once complete.

## Files
* **Dockerfile** - Dockerfile to build a container ready to build the python project
* **Makefile** - Simple Makefile that solely exposes `make deb` as a target, used in the project
* **build-release** - A shell script that builds and uploads a snapshot package, used in the project
* **build-snapshot** - A shell script that builds and uploads a staging release package, used in the project
* **debian/** - Debian packaging files, used in the project
* **dput.cf** - Config file for `dput`, used in Dockerfile
* **git-snapshot** - Shell script used by build-snapshot to generate a temporary version number in the debian changelog

## Licensing
All SIPHON original code is licensed under the MIT license. Code derived from dh-virtualenv-mold - specifically the `debian/rules` file - is licensed under the Apache v2 license as indicated in the header of the file.

## Influences
* [jenkins-debian-glue](https://github.com/mika/jenkins-debian-glue)
* [dh-virtualenv-mold](https://github.com/Springerle/dh-virtualenv-mold)
