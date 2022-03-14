
# /////////////////////////////////////////////////////////////////////////////////////////////////
# // NOTES FOR: https://github.com/pietergreyling/couchbase-docker-compose.git
# // 


# //////////////////////////////////////////////////////////////////////////
# // Git/GitHub
# // 

# [1] -- git clone GITHUB_REPO_NAME

git clone https://github.com/pietergreyling/couchbase-docker-compose.git

# [2] -- cd GITHUB_REPO_NAME
cd couchbase-docker-compose

# [3] -- check out main branch and make sure that it is up to date with the latest changes
git checkout main
git status
# git pull
git pull origin main

# [4] -- create new branch and check it out 
# git checkout -b BRANCH_NAME
# git status

# [5] -- do work
# . . .
# git status

# [6] -- view all changes/changed lines etc.
git diff

# [7] -- stage work changes
git add .
git status

# [8] -- commit work
git commit -m "Incremental work commit."
git status
# git pull

# [9] -- push commit to origin
git push origin main
git log


# //////////////////////////////////////////////////////////////////////////
# // Docker / Docker Compose
# // 

# // Docker - - - - - - - - - -

# start the Docker daemon on macOS
open /Applications/Docker.app &

docker version

docker run hello-world

docker run busybox echo "Howdy from busybox..."

docker container ls -a

docker ps -a

docker network ls

docker image inspect priyacouch/couchbase-server-userprofile:7.0.0-dev

docker container inspect d3888640ac51

docker build -f Dockerfile.cbserver -t greyling_cbserver . --build-arg os_platform=macos

docker image inspect greyling_cbserver

docker run greyling_cbserver echo '-- Howdy from greyling_cbserver!!!'

# /////////////////////////////////////////////////////////////////////////////////////////////////
# run as:
#  do:
#   docker image ls
#   docker image rm greyling_test_alpine
#   docker image ls
#   DOCKER_BUILDKIT=0 docker build -f Dockerfile.test_alpine .
#   DOCKER_BUILDKIT=0 docker build -f Dockerfile.test_alpine -t greyling_test_alpine . --build-arg os_platform=macos_test
#   DOCKER_BUILDKIT=0 docker run greyling_test_alpine
#   - - - -
#   docker image ls
#   docker image rm greyling_cbserver
#   docker image ls
#   docker build -f Dockerfile.cbserver .
#   docker build -f Dockerfile.cbserver -t greyling_cbserver . --build-arg os_platform=macos
#   docker run greyling_cbserver
#   - - - -
#   docker image ls
#   docker image rm greyling_cbsyncgateway
#   docker image ls
#   docker build -f Dockerfile.cbsyncgateway .
#   docker build -f Dockerfile.cbsyncgateway -t greyling_cbsyncgateway . --build-arg os_platform=macos
#   docker run greyling_cbsyncgateway
# /////////////////////////////////////////////////////////////////////////////////////////////////

docker image rm greyling_alpine

DOCKER_BUILDKIT=0 docker build -f Dockerfile.alpine -t greyling_alpine . --build-arg os_platform=macos_test

# // Docker Compose - - - - - - - - - -

docker-compose --version


# //////////////////////////////////////////////////////////////////////////
# // Docker: with output
# // 

# start the Docker daemon on macOS
open /Applications/Docker.app &

docker version
# Client:
#  Cloud integration: v1.0.22
#  Version:           20.10.12
#  API version:       1.41
#  Go version:        go1.16.12
#  Git commit:        e91ed57
#  Built:             Mon Dec 13 11:46:56 2021
#  OS/Arch:           darwin/amd64
#  Context:           default
#  Experimental:      true

# Server: Docker Desktop 4.5.0 (74594)
#  Engine:
#   Version:          20.10.12
#   API version:      1.41 (minimum version 1.12)
#   Go version:       go1.16.12
#   Git commit:       459d0df
#   Built:            Mon Dec 13 11:43:56 2021
#   OS/Arch:          linux/amd64
#   Experimental:     false
#  containerd:
#   Version:          1.4.12
#   GitCommit:        7b11cfaabd73bb80907dd23182b9347b4245eb5d
#  runc:
#   Version:          1.0.2
#   GitCommit:        v1.0.2-0-g52b36a2
#  docker-init:
#   Version:          0.19.0
#   GitCommit:        de40ad0

docker run hello-world
# Hello from Docker!
# This message shows that your installation appears to be working correctly.
# 
# To generate this message, Docker took the following steps:
#  1. The Docker client contacted the Docker daemon.
#  2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
#     (amd64)
#  3. The Docker daemon created a new container from that image which runs the
#     executable that produces the output you are currently reading.
#  4. The Docker daemon streamed that output to the Docker client, which sent it
#     to your terminal.
# 
# To try something more ambitious, you can run an Ubuntu container with:
#  $ docker run -it ubuntu bash
# 
# Share images, automate workflows, and more with a free Docker ID:
#  https://hub.docker.com/
# 
# For more examples and ideas, visit:
#  https://docs.docker.com/get-started/

docker run busybox echo "Howdy from busybox..."
# Unable to find image 'busybox:latest' locally
# latest: Pulling from library/busybox
# 7e5209d2300f: Pull complete
# Digest: sha256:34c3559bbdedefd67195e766e38cfbb0fcabff4241dbee3f390fd6e3310f5ebc
# Status: Downloaded newer image for busybox:latest
# Howdy from busybox...

docker container ls -a
# CONTAINER ID   IMAGE                                               COMMAND                  CREATED              STATUS                          PORTS     NAMES
# e16f353f3f02   busybox                                             "echo 'Howdy from bu…"   About a minute ago   Exited (0) About a minute ago             funny_gould
# db20d9098704   hello-world                                         "/hello"                 About an hour ago    Exited (0) About an hour ago              gallant_bartik
# 5875059a06a3   couchbase/sync-gateway:2.8.2-enterprise             "/entrypoint.sh -adm…"   2 months ago         Exited (1) 2 weeks ago                    sync-gateway
# d3888640ac51   priyacouch/couchbase-server-userprofile:7.0.0-dev   "/entrypoint.sh /opt…"   2 months ago         Exited (137) 2 weeks ago                  cb-server
# 8bbb2f19fb40   hello-world                                         "/hello"                 2 months ago         Exited (0) 2 months ago                   youthful_swanson
# 0ba4518cf7dc   hello-world                                         "/hello"                 3 months ago         Exited (0) 3 months ago                   eager_kapitsa
# 5fe16333ab59   hello-world                                         "/hello"                 3 months ago         Exited (0) 3 months ago                   priceless_sammet

docker ps -a
# CONTAINER ID   IMAGE                                               COMMAND                  CREATED             STATUS                         PORTS     NAMES
# e16f353f3f02   busybox                                             "echo 'Howdy from bu…"   13 seconds ago      Exited (0) 12 seconds ago                funny_gould
# db20d9098704   hello-world                                         "/hello"                 About an hour ago   Exited (0) About an hour ago             gallant_bartik
# 5875059a06a3   couchbase/sync-gateway:2.8.2-enterprise             "/entrypoint.sh -adm…"   2 months ago        Exited (1) 2 weeks ago                   sync-gateway
# d3888640ac51   priyacouch/couchbase-server-userprofile:7.0.0-dev   "/entrypoint.sh /opt…"   2 months ago        Exited (137) 2 weeks ago                 cb-server
# 8bbb2f19fb40   hello-world                                         "/hello"                 2 months ago        Exited (0) 2 months ago                  youthful_swanson
# 0ba4518cf7dc   hello-world                                         "/hello"                 3 months ago        Exited (0) 3 months ago                  eager_kapitsa
# 5fe16333ab59   hello-world                                         "/hello"                 3 months ago        Exited (0) 3 months ago                  priceless_sammet

docker network ls
# NETWORK ID     NAME       DRIVER    SCOPE
# 09b221c8c4a5   bridge     bridge    local
# 791391d759e0   host       host      local
# 6a75a5759400   none       null      local
# 09c8eb2cdbfa   workshop   bridge    local

docker image inspect priyacouch/couchbase-server-userprofile:7.0.0-dev
# . . .

docker container inspect d3888640ac51
# . . .

docker build -f Dockerfile.cbserver -t greyling_cbserver . --build-arg os_platform=macos
# [+] Building 0.8s (8/8) FINISHED
#  => [internal] load build definition from Dockerfile.cbserver                                                                           0.0s
#  => => transferring dockerfile: 930B                                                                                                    0.0s
#  => [internal] load .dockerignore                                                                                                       0.0s
#  => => transferring context: 2B                                                                                                         0.0s
#  => [internal] load metadata for docker.io/library/busybox:latest                                                                       0.0s
#  => [base 1/2] FROM docker.io/library/busybox:latest                                                                                    0.0s
#  => [base 2/2] RUN echo "-- Multi-stage conditional build depending on os_platform argument"                                            0.2s
#  => [stage_macos 1/1] RUN echo "-- stage_macos ..."                                                                                     0.3s
#  => [stage_final 1/1] RUN echo "-- stage_final: VAR is equal to stage_macos"                                                            0.2s
#  => exporting to image                                                                                                                  0.0s
#  => => exporting layers                                                                                                                 0.0s
#  => => writing image sha256:a1a77869522bfba65fcc0c2f47ba7544a1ed34fa7f9691cc9e4a3e900f5c4912                                            0.0s
#  => => naming to docker.io/library/greyling_cbserver

docker image inspect greyling_cbserver
# [
#     {
#         "Id": "sha256:a1a77869522bfba65fcc0c2f47ba7544a1ed34fa7f9691cc9e4a3e900f5c4912",
#         "RepoTags": [
#             "greyling_cbserver:latest"
#         ],
#         . . .

docker run greyling_cbserver echo '-- Howdy from greyling_cbserver!!!'
# -- Howdy from greyling_cbserver!!!

docker image rm greyling_test_alpine
# Untagged: greyling_alpine:latest
# Deleted: sha256:260a2d751921a7325c8dc857e090192d51d39ccb1d3bf8e62b0bac293247dc33
# Deleted: sha256:5b213206c9d6b697d34f027977181b6daaed4385fa4728999468737b7049d920

DOCKER_BUILDKIT=0 docker build -f Dockerfile.test_alpine -t greyling_test_alpine . --build-arg os_platform=macos_test
# /couchbase-docker-compose
# total 40
# drwxr-xr-x    1 root     root          4096 Mar 14 17:34 .
# drwxr-xr-x    1 root     root          4096 Mar 14 17:34 ..
# drwxr-xr-x    7 root     root          4096 Mar 11 15:16 .git
# -rw-r--r--    1 root     root          1491 Feb  9 02:42 .gitignore
# -rw-r--r--    1 root     root          1779 Mar 14 17:31 Dockerfile.test_alpine
# -rw-r--r--    1 root     root          1072 Mar 10 18:03 LICENSE
# -rw-r--r--    1 root     root           109 Mar 10 18:03 README.md
# drwxr-xr-x    2 root     root          4096 Mar 10 18:56 config
# drwxr-xr-x    2 root     root          4096 Mar 10 18:45 data
# -rw-r--r--    1 root     root             0 Feb 23 14:57 docker-compose.yml
# drwxr-xr-x    2 root     root          4096 Mar 10 18:45 scripts
# Removing intermediate container 0095ade5a233
#  ---> e3be41ed2ca1
# Step 6/15 : FROM stage_base AS stage_macos_test
#  ---> e3be41ed2ca1
# Step 7/15 : ENV OS_PLATFORM=stage_macos_test
#  ---> Running in decbc68fe623
# Removing intermediate container decbc68fe623
#  ---> 214053911197
# Step 8/15 : FROM stage_base AS stage_macos
#  ---> e3be41ed2ca1
# Step 9/15 : ENV OS_PLATFORM=stage_macos
#  ---> Running in 649e26fe5958
# Removing intermediate container 649e26fe5958
#  ---> 0af76bc5ea51
# Step 10/15 : FROM stage_base AS stage_windows
#  ---> e3be41ed2ca1
# Step 11/15 : ENV VAR=stage_windows
#  ---> Running in 54b5b37b56c0
# Removing intermediate container 54b5b37b56c0
#  ---> d4759a4fb707
# Step 12/15 : FROM stage_base AS stage_linux
#  ---> e3be41ed2ca1
# Step 13/15 : ENV OS_PLATFORM=stage_linux
#  ---> Running in d79893816025
# Removing intermediate container d79893816025
#  ---> 92c1ca11adb1
# Step 14/15 : FROM stage_${os_platform} AS stage_final
#  ---> 214053911197
# Step 15/15 : RUN echo "-- stage_final: OS_PLATFORM is equal to ${OS_PLATFORM}"
#  ---> Running in 2ea2d44c4a82
# -- stage_final: OS_PLATFORM is equal to stage_macos_test
# Removing intermediate container 2ea2d44c4a82
#  ---> e7ad7dd97afb
# Successfully built e7ad7dd97afb
# Successfully tagged greyling_test_alpine:latest

# /////////////////////////////////////////////////////////////////////////////////////////////////

