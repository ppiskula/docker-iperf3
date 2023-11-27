# iperf3 Server in Docker

Simple multi-platform container with iperf3 server for network bandwith testing.

## Build
- Clone the repository
  ```
  $ git clone https://github.com/ppiskula/docker-iperf3-server.git
  $ cd docker-iperf3-server
  ```

- Initialize submodules
  ```
  $ git submodule update --init
  ```

- Build the image:
  ```
  $ docker build -t ppiskula/iperf3-alpine:latest .
  ```

## Usage
  ```
  $ docker run --rm -t -p 5201:5201 ppiskula/iperf3-server:latest
  ```
