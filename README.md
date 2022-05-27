# couchbase-docker-compose
**Couchbase Server and Sync Gateway Developer Environment Setup with Docker / Docker Compose**

### Cloning this repository

`git clone https://github.com/pietergreyling/couchbase-docker-compose.git`

### Install Docker Desktop for your OS

#### macOS
[https://docs.docker.com/desktop/mac/install/](https://docs.docker.com/desktop/mac/install/)


### Running local setup + provisioning of Couchbase Server and Sync Gateway with Docker Compose

#### This invokes and runs the `./couchbase-server` and `./sync-gateway` Docker build files:

`docker-compose up --detach`

#### Show the running Docker images with:

`docker ps`

#### Inspect the logs:

`docker logs couchbase-server`

`docker logs sync-gateway`

#### Verify with CURL on the commandline:

**Couchbase Server**:

`curl http://localhost:8092`

Expected response:

`... {"couchdb":"Welcome"}`

**Couchbase Sync Gateway**:

`curl http://localhost:4984`

Expected response:

`...
{"couchdb":"Welcome","vendor":{"name":"Couchbase Sync Gateway","version":"3.0"},"version":"Couchbase Sync Gateway/3.0.0(541;46803d1) EE"}%`


### Resources

[Getting Comfortable with Couchbase Mobile: Sync Gateway via the Command Line](https://blog.couchbase.com/getting-comfortable-with-couchbase-mobile-sync-gateway-via-the-command-line/)


### License

***This is not an official Couchbase product and is a work in progress!***

Feel free to create Git branches and contribute.

**[MIT License](https://opensource.org/licenses/MIT)**

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
