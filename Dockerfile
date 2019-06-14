FROM node:8 
WORKDIR /app
COPY . .

#CMD [ "npm", "start" ]
RUN npm install
RUN npm run test *.js
CMD [ "npm", "start" ]
