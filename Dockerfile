FROM ubuntu:noble
RUN apt-get update && apt-get install -y curl python3 python3-pip

# Install Node 22 directly
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y nodejs

RUN npm install -g n8n

ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
