FROM node:13.6.0-stretch-slim
WORKDIR /home/node
COPY package-lock.json .
COPY package.json .
RUN npm install --save
COPY . .

RUN npm install hexo-cli --save
ENV PATH /home/node/node_modules/.bin:${PATH}
CMD hexo serve
