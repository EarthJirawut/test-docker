FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

# รับค่า ENV ตอน build
ARG NEXT_PUBLIC_DB_HOST
ENV NEXT_PUBLIC_DB_HOST=$NEXT_PUBLIC_DB_HOST

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
