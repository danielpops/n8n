# Use the official n8n image as the base
FROM n8nio/n8n:latest

# Switch to the root user to install packages
USER root

# Install Python 3 and pip using Alpine Linux package manager (apk)
RUN apk update
RUN apk add --no-cache python3 py3-pip
