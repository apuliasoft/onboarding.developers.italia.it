FROM node:8

WORKDIR /usr/src/app/

COPY package.json . 
RUN npm install

# copy app source to destination container
COPY . .

# Launch application
CMD npm run $env