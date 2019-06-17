FROM node:8 
WORKDIR /app
COPY . .

RUN npm install
RUN npm run test sampletests1.js
RUN npm run test sampletests2.js
CMD [ "npm", "start" ]
