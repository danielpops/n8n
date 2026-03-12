FROM ubuntu:noble
RUN apt-get update && apt-get install -y curl python3 python3-pip

# Install Node 22 directly
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y nodejs

RUN npm install -g n8n

ADD start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
