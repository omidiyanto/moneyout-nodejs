FROM node:latest
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm config set cache /home/node/.npm --global
RUN mkdir "/home/node/.npm"
RUN mkdir "/.npm"
RUN chmod -R 777 "/home/node/.npm"
RUN chmod -R 777 "/.npm"
RUN chmod -R 777 "/usr/src/app"
RUN chown -R 1002710000:0 "/.npm"
RUN chown -R 1002710000:0 "/home/node/.npm"
RUN chown -R 1002710000:0 "/usr/src/app"
EXPOSE 8080
CMD [ "npm", "run", "dev", "--", "--host" ]
