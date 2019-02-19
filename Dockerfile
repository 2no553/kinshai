FROM node:lts-jessie

WORKDIR /app

RUN apt update && apt upgrade -y
RUN apt install build-essential
