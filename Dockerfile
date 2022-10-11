FROM node:16-alpine3.15


#Set working directory to /app
WORKDIR /app

#Copy package.json in the image
COPY package.json ./


#Run npm install command
RUN npm install


#Copy the app
COPY . ./

EXPOSE 3000

#Start the app
CMD ["node", "./src/index.js"]