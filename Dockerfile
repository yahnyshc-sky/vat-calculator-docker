# stage 1
FROM node:24-alpine AS stage1

# change into a folder called /app
WORKDIR /app

# only copy package.json
COPY package.json .

# download the project dependencies
RUN npm install

# copy everything from the react app folder to the /app folder in the container
COPY . .

# package up the react project in the /app directory
RUN npm run build

# stage 2
FROM nginx:1.28-alpine
COPY --from=stage1 /app/build /usr/share/nginx/html

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]