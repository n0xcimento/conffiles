# especifica a imagem a ser usada (imagens do docker hub)
FROM debian:latest

ARG USERNAME=root

# comandos e pacotes específicos do Debian (eu sei que eles existem)
RUN apt update && apt upgrade -y && \
    apt install -y \
    bash-completion \
    man \
    git \
    && apt clean


# diretório de trabalho padrão
WORKDIR /app/


# copia o .bashrc do homedir para o homedir do USERNAME
COPY debian.bashrc /root/.bashrc


CMD ["bash"]