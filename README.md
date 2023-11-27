# iperf3 Server in Docker

Simple multi-platform container with iperf3 server for network bandwith testing.

## Build
- Clone the repository
  ```bash
  git clone --single-branch --branch server https://github.com/ppiskula/docker-iperf3.git
  ```
  ```bash
  cd docker-iperf3
  ```

- Initialize submodules
  ```bash
  git submodule update --init
  ```

- Build the image
  ```bash
  docker build -t ppiskula/iperf3-server:latest .
  ```
  or
  ```bash
  docker compose build
  ```

## Usage
- One-time use
  ```bash
  docker run --rm -it -p 5201:5201 --network host ppiskula/iperf3-server:latest
  ```

- Detached run
  ```bash
  docker run -name iperf3-server -p 5201:5201 --network host -d ppiskula/iperf3-server:latest
  ```

- Compose run
  ```bash
  docker compose up -d
  ```

---
&copy; 2023 Patrycja "P4tka" Piskuła &middot; Licensed under GNU GPL v3.0