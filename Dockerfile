FROM gitpod/workspace-full:2022-05-08-14-31-53

ARG VERSION

# Install the buf cli
RUN wget https://github.com/bufbuild/buf/releases/download/v1.4.0/buf-Linux-x86_64
RUN sudo mv buf-Linux-x86_64 /usr/local/bin/buf && sudo chmod +x /usr/local/bin/buf

# Install the substreams cli
RUN wget -c https://github.com/streamingfast/substreams/releases/download/v${VERSION}/substreams_${VERSION}_linux_x86_64.tar.gz -O - | tar xzf - substreams
RUN sudo mv substreams /usr/local/bin/substreams

ENTRYPOINT ["/bin/bash"]
