FROM alpine:3.18 as build

RUN apk update; \
apk upgrade --no-cache; \
apk add --no-cache build-base;

WORKDIR /iperf
COPY iperf .

RUN ./configure --prefix=/dist; \
make; \
make install;


FROM alpine:3.18

RUN apk update; \
apk upgrade --no-cache;

COPY --from=build /dist /usr/local

CMD ["iperf3", "-s"]
