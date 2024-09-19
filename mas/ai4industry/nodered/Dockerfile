# docker build --tag=ai4ind-nodered . 
# docker run -it -p 1880:1880 -v node_red_data:/data --name mynodered ai4ind-nodered

FROM nodered/node-red:latest


RUN npm install serialport@9.2.8
RUN npm install nan

CMD ["node-red"]
