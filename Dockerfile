FROM ubuntu:noble
# copy n8n binaries/files from the official image
COPY --from=n8nio/n8n:latest /usr/local/lib/node_modules/n8n /usr/local/lib/node_modules/n8n
RUN apt-get update && apt-get install -y nodejs python3 python3-pip
