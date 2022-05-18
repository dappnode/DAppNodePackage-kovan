# Build Parity in a stock alpine builder container
FROM alpine:edge as builder

ARG PARITY_VERSION=v2.6.4

# show backtraces
ENV RUST_BACKTRACE 1

RUN apk --no-cache add \
    build-base \
    cargo \
    cmake \
    eudev-dev \
    linux-headers \
    perl \
    rust \ 
    git

RUN git clone -b ${PARITY_VERSION} https://github.com/paritytech/parity-ethereum /parity-ethereum
WORKDIR /parity-ethereum
RUN cargo build 
RUN cargo build --release --features final --target x86_64-alpine-linux-musl
RUN strip target/x86_64-alpine-linux-musl/release/parity

# Pull Parity into a second stage deploy alpine container
FROM alpine:edge

RUN apk --no-cache add libgcc libstdc++ eudev-libs
RUN apk add -u musl

COPY --from=builder /parity-ethereum/target/x86_64-alpine-linux-musl/release/parity /usr/local/bin

ENTRYPOINT parity --chain=kovan $EXTRA_OPTS
