FROM node:8 
WORKDIR /app
COPY . .

#CMD [ "npm", "start" ]
RUN npm cache clean --force
RUN npm install
RUN npm run test *.js
CMD [ "npm", "start" ]
