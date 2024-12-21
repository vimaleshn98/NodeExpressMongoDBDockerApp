FROM    node:23.4-alpine3.21

LABEL   author="vimalesh"

ENV     NODE_ENV="production"
ENV     PORT=3000

WORKDIR     /var/www/
COPY package.json package-lock.json ./
RUN npm install


COPY . ./
EXPOSE ${port}

# ENTRYPOINT [ "node","server.js" ]
ENTRYPOINT [ "npm","start" ]
