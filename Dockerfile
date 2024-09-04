FROM node:alpine

WORKDIR /frontail
ADD . .
RUN npm install --production

ENTRYPOINT ["node", "index.js"]
CMD ["-p", "8080", "/logs/messages"]
EXPOSE 8080
