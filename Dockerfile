FROM node:alpine3.14

COPY . /app
WORKDIR /app
RUN addgroup -S app &&\ 
    adduser -S app -G app &&\
    chown -R app:app /app
USER app
RUN npm install
RUN npm run test

ENTRYPOINT [ "npm","run","start" ]