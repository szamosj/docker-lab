# Dockerfile
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install basic packages (we'll add PHP/Apache later)
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*
