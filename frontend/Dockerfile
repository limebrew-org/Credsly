#? Stage 1: Install dependencies
FROM node:20.10.0-slim AS builder

WORKDIR /app

COPY . .

RUN yarn --frozen-lockfile

RUN yarn build

#? Stage 2: Serve using Nginx
FROM nginx:1.21-alpine as server

COPY nginx.conf /etc/nginx/nginx.conf

COPY --from=builder /app/build /usr/share/nginx/html

#? Entry point
ENTRYPOINT ["nginx", "-g", "daemon off;"]