FROM node:alpine

WORKDIR /home/app

RUN npm install -g pnpm

RUN pnpm config set store-dir /tmp/pnpm/store

# RUN pnpm store prune

RUN mkdir -p nextjs-dashboard

RUN apk add --no-cache python3 make g++

RUN npx create-next-app@latest nextjs-dashboard --example "https://github.com/vercel/next-learn/tree/main/dashboard/starter-example" --use-pnpm