# especifica a imagem a ser usada (imagens do docker hub)
FROM debian:latest

ARG USERNAME=vscode
ARG WDIR=/home/$USERNAME

# comandos e pacotes específicos do Debian (eu sei que eles existem)
RUN apt update && apt upgrade -y && \
    apt install -y \
    man \
    sudo \
    git \
    vim \
    && apt clean


# gerenciamento de usuário #
# cria um usuário com shell bash e diretório home
RUN useradd --shell /bin/bash -m $USERNAME -p $(openssl passwd -1 $USERNAME)


# adiciona o $USERNAME ao grupo sudo
RUN usermod -aG sudo $USERNAME


# diretório de trabalho padrão
WORKDIR $WDIR


# copia o .bashrc do homedir para o homedir do USERNAME
COPY .bashrc $WDIR


CMD ["bash"]