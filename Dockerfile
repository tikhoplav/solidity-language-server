FROM ghcr.io/foundry-rs/foundry

FROM node:20-alpine
COPY --from=0 /usr/local/bin/forge /usr/local/bin/forge
ARG VER=0.8.3
RUN npm install -g @nomicfoundation/solidity-language-server@0.8.3
CMD ["nomicfoundation-solidity-language-server", "--stdio"]
