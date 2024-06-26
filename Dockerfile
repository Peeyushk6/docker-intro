FROM node:20

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build
RUN npx prisma generate

EXPOSE 3000

# this run when you start the containers
CMD ["node","dist/index.js"]

