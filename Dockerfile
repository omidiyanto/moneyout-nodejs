FROM node:latest
WORKDIR /usr/src/app
COPY . .
RUN npm config set cache /home/node/.npm --global
RUN mkdir "/home/node/.npm"
RUN mkdir "/.npm"
RUN chmod 777 "/home/node/.npm"
RUN chmod 777 "/.npm"
RUN chown -R 1002710000:0 "/.npm"
RUN chown -R 1002710000:0 "/home/node/.npm"
RUN npm install
EXPOSE 8080
CMD [ "npm", "run", "serve" ]
