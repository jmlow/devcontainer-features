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

# Cleanup apt cache to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Reset to default
ENV DEBIAN_FRONTEND=dialog
