FROM node:18-alpine3.15
WORKDIR /app
COPY ./ /app/
RUN apk add --update python3 make g++ && rm -rf /var/cache/apk/*
RUN npm install && npm run build
ENTRYPOINT ["./entrypoint.sh"]