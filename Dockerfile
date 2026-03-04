FROM ubuntu:noble
RUN apt-get update && apt-get install -y curl python3 python3-pip

# Download and install nvm
ENV BASH_ENV /.bash_env
RUN touch "${BASH_ENV}"
RUN echo '. "${BASH_ENV}"' >> ~/.bashrc

# Download and install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | PROFILE="${BASH_ENV}" bash
RUN bash -c "source ~/.bashrc && nvm install 22"
RUN bash -c "npm install n8n -g"

ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT /docker-entrypoint.sh
