# Use a imagem base do Node.js
FROM node:20-alpine

ARG USERNAME=root

#
# # ANDROID SETTING UP
#
# Instale dependências necessárias para o Android SDK (cli OR Bare workflow)
# RUN apt-get update && apt-get install -y \
#     openjdk-8-jdk \
#     android-sdk \
#     wget \
#     unzip \
#     && apt-get clean
# # Defina variáveis de ambiente para o Android
# ENV ANDROID_SDK_ROOT=/usr/lib/android-sdk
# ENV PATH=${PATH}:${ANDROID_SDK_ROOT}/platform-tools:${ANDROID_SDK_ROOT}/tools


RUN apk update && apk upgrade && apk add \
    bash \
    bash-completion \
    git


# copia o .bashrc do homedir para o homedir do USERNAME
COPY alpine.bashrc /root/.bashrc


# Definie o diretório de trabalho no container (cria o diretório caso não exista)
WORKDIR /app/


# Exponha a porta usada pelo expo para o host (tem que usar a flag -p no DOCKER RUN)
EXPOSE 19000


# Defina o comando padrão do container
CMD ["bash"]