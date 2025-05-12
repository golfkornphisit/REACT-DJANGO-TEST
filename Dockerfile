FROM node:22.15

COPY ./frontend /frontend
RUN rm -rf /frontend/node_modules

WORKDIR /frontend
RUN npm ci

CMD ["npm", "run", "dev"]