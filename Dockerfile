FROM parity/parity:v1.11.1
ENV HOME /home
WORKDIR $HOME

RUN ln -s /parity/parity /usr/bin

ENTRYPOINT parity --chain=kovan -j  --jsonrpc-port 8545 --jsonrpc-hosts all --jsonrpc-cors '*'  --jsonrpc-interface all --ws-interface 0.0.0.0 --ws-port 8546 --ws-origins '*' --ws-hosts all --cache-size 1024 --ui-interface "0.0.0.0" --ui-hosts all --ui-no-validation