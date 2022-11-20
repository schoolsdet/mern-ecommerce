FROM node:19-alpine3.15
WORKDIR /app
COPY ./ /app/
RUN npm run build
ENTRYPOINT ["./entrypoint.sh"]