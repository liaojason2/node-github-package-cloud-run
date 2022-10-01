FROM node:16

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY [ "package.json", "yarn.lock*", "./" ]
RUN [ "yarn", "--production" ]

# Bundle app source
COPY [ \
    "http-server.js", \
    "./" \
    ]

# HTTP server listen on 8080 port
EXPOSE 8080

# Run HTTP server
CMD [ "node", "http-server.js" ]