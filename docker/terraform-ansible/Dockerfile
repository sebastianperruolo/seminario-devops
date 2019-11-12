FROM debian:latest

#RUN apt-get remove docker docker-engine docker.io containerd runc

RUN apt-get update

RUN apt-get install -y \
    python3 \
    python3-distutils \
    zip \
    curl \
    ansible \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

RUN apt-get update

RUN apt-get install -y docker-ce docker-ce-cli containerd.io

RUN curl https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip --output /tmp/terraform.zip && \
    unzip /tmp/terraform.zip -d /tmp && \
    mv /tmp/terraform /usr/local/bin/ && \
    rm -f /tmp/terraform.zip

WORKDIR /app
