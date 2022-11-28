FROM node:16-alpine3.15
WORKDIR /app
COPY ./ /app/
RUN apk add --update python3 make g++ bash && rm -rf /var/cache/apk/*
RUN npm install && npm run build
RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]