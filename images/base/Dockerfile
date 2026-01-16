# syntax=docker/dockerfile:1
#
# Base image for devcontainer-features
# Pre-installs commonly used tools to speed up devcontainer build times
#
# Build: docker build -t ghcr.io/jmlow/devcontainer-features/base:latest .
# Test:  docker run --rm -it ghcr.io/jmlow/devcontainer-features/base:latest
#

ARG BASE_IMAGE=mcr.microsoft.com/devcontainers/base:ubuntu
FROM ${BASE_IMAGE}

LABEL org.opencontainers.image.source="https://github.com/jmlow/devcontainer-features"
LABEL org.opencontainers.image.description="Base image with pre-installed tools for faster devcontainer builds"

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists
RUN apt-get update

# Build toolchains and development libraries
RUN apt-get install -y --no-install-recommends \
	build-essential \
	clang \
	libclang-dev \
	libreadline-dev \
	luarocks

# CLI tools
RUN apt-get install -y --no-install-recommends \
	fd-find \
	fzf \
	ripgrep \
	tmux

# Cleanup apt cache to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Rust toolchain
ENV CARGO_HOME=/usr/local/cargo
ENV RUSTUP_HOME=/usr/local/rustup
ENV PATH="$CARGO_HOME/bin:$PATH"

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y \
	&& curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

# Rust-based CLI tools
RUN cargo binstall -y tree-sitter-cli zellij zoxide

# Reset to default
ENV DEBIAN_FRONTEND=dialog
