FROM node:10.16

RUN mkdir -p /opt/workspace
WORKDIR /opt/workspace
COPY package.json /opt/workspace/
RUN yarn
COPY . /opt/workspace

EXPOSE 8080

ENTRYPOINT yarn start