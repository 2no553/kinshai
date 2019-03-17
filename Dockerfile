FROM node:10.15.3-jessie
LABEL maintainer="fs-ninomiya"

ENV TZ=Asia/Tokyo
RUN yarn global add gatsby-cli