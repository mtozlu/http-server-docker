FROM node:12-alpine
LABEL maintainer="Mustafa Tozlu"
VOLUME /public
WORKDIR /
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
EXPOSE 8080
ENTRYPOINT ["yarn", "run", "http-server"]
