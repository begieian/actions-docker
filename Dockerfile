FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME db_demo_001
ENV MONGODB_CLUSTER_ADDRESS cluster0.pnzhoap.mongodb.net
ENV MONGODB_USERNAME gdnght1992
ENV MONGODB_PASSWORD I7mUk2gKMl8cNN7F

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]