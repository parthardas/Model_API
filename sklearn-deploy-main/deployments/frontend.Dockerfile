FROM node:16-alpine
RUN mkdir /frontend
WORKDIR /frontend
#COPY ./frontend/package.json /frontend/
COPY /sklearn-deploy-main/frontend/package.json /frontend/
RUN npm install
#COPY ./frontend /frontend/
COPY /sklearn-deploy-main/frontend /frontend/
RUN ls
EXPOSE 5000
CMD [ "npm","start"]