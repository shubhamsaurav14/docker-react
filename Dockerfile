FROM node:alpine

WORKDIR '/app'

COPY package.json .
RUN npm install
copy . .

CMD ["npm", "start"]

# run = build + start [build = image building] [start = staring a container]
# docker build .
# docker build -t shubham14/visits:latest .
# docker start container
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
# docker run -d shubham14/visits
# docker run -it shubham14/visits <cmd> //to override the CMD in Dockerfile
# docker exec -it 
# docker run -p 4001:8081 -v /app/node_modules -v /home/unix/docker/visits/:/app shubham14/visits:latest
