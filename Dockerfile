FROM fedora:latest

# replace sh with bash
#RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# install rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# install mold
RUN dnf install mold gcc -y
ADD ./config.toml ~/.cargo    

# install cargo watch
RUN source ~/.cargo/env && cargo install cargo-watch

