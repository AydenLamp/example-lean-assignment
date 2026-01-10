# Base Ubuntu 22.04 ("jammy") devcontainer image from Microsoft
FROM mcr.microsoft.com/devcontainers/base:jammy

# Avoid interactive prompts during apt installs
ENV DEBIAN_FRONTEND=noninteractive

# Install the minimum system packages:
# - curl: download elan installer (and sometimes other artifacts)
# - git: needed for Lake to fetch dependencies like mathlib
# - ca-certificates: TLS certificates so HTTPS downloads work reliably
# - zstd/xz-utils: common decompressors (useful for various downloaded archives)
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
     curl \
     git \
     ca-certificates \
     zstd \
     xz-utils \
  && rm -rf /var/lib/apt/lists/*

# Switch to the vscode user (matches devcontainer.json remoteUser)
USER vscode

# Put elan binaries on PATH for this user (elan installs into ~/.elan by default)
ENV PATH="/home/vscode/.elan/bin:${PATH}"

# Install elan and set the default Lean toolchain to the latest stable release
RUN curl -sSf https://elan.lean-lang.org/elan-init.sh \
  | sh -s -- -y --default-toolchain stable

# Set the working directory that devcontainers typically use for mounted repos
USER root
WORKDIR /workspaces
