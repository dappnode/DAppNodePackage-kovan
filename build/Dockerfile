# Build Parity in a stock alpine builder container
FROM alpine:edge as builder

WORKDIR /usr/src/app

ARG VERSION=v2.1.4

RUN apk --no-cache add git rust cargo make openssl-dev eudev-dev linux-headers g++ cmake perl musl-dev
RUN git clone -b $VERSION https://github.com/paritytech/parity-ethereum && cd parity-ethereum && \
    cargo build --release

# Pull Parity into a second stage deploy alpine container
FROM alpine:3.8

RUN apk --no-cache add ca-certificates libgcc libstdc++ eudev
COPY --from=builder /usr/src/app/parity-ethereum/target/release/parity /usr/local/bin

ENTRYPOINT parity --chain=kovan --jsonrpc-port 8545 --jsonrpc-interface all --jsonrpc-hosts all --jsonrpc-cors all --ws-interface all --ws-port 8546 --ws-origins all --ws-hosts all $EXTRA_OPTS

