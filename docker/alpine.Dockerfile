FROM alpine:latest

ARG USERNAME=root

RUN apk update && apk upgrade && apk add \
    bash \
    bash-completion\
    git

WORKDIR /app

COPY alpine.bashrc /root/.bashrc

# commando para rodar o container sempre em background
CMD ["bash"]