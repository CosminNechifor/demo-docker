FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "start:dev" ]

# To understand each command and what it does I recommend going
# to the following website and read the command:
# https://kapeli.com/cheat_sheets/Dockerfile.docset/Contents/Resources/Documents/index
