# iperf3 Server in Docker

Simple multi-platform container with iperf3 server for network bandwith testing.

## Build
- Clone the repository
  ```
  $ git clone --single-branch --branch server https://github.com/ppiskula/docker-iperf3.git
  $ cd docker-iperf3
  ```

- Initialize submodules
  ```
  $ git submodule update --init
  ```

- Build the image:
  ```
  $ docker build -t local/iperf3-server:latest .
  ```

## Usage
  ```
  $ docker run --rm -it -p 5201:5201 ppiskula/iperf3-server:latest
  ```

---
Copyright 2023 &copy; Patrycja "P4tka" Piskuła &middot; Licensed under GNU GPL v3.0