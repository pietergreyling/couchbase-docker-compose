# couchbase-docker-compose
**Couchbase Server and Sync Gateway Developer Environment Setup with Docker / Docker Compose**

###Cloning this repository

`git clone https://github.com/pietergreyling/couchbase-docker-compose.git`


### Running local setup/provisioning of both Couchbase Server and Sync Gateway with Docker Compose

This invokes the `Dockerfile.cbserver` and `Dockerfile.cbsyncgateway` docker files. See below for how to run these separately with the docker command. 

`BUILDKIT_PROGRESS=plain docker-compose build --build-arg os_platform=macos`


### Running local Couchbase Server setup/provisioning with Docker using the Docker file directly

`DOCKER_BUILDKIT=1 docker build --progress=plain -f Dockerfile.cbserver -t cb-server . --build-arg os_platform=macos`


### Running local Couchbase Sync Gateway setup/provisioning with Docker using the Docker file directly

`DOCKER_BUILDKIT=1 docker build --progress=plain -f Dockerfile.cbsyncgateway -t sync-gateway . --build-arg os_platform=macos`


###License

***This is not an official Couchbase product and is a work in progress!***

Feel free to create Git branches and contribute.

**MIT License**

Copyright (c) 2022 Pieter Greyling

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
