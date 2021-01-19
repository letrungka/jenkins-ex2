FROM node:14-alpine
RUN apk update && apk add curl
WORKDIR /app
EXPOSE 3001
COPY . .
CMD [ "node", "index" ]