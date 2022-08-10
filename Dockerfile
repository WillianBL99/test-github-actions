# buscar uma imagem do note no dockerhub
FROM node

# escolher uma pasta para colocar minha aplicação
WORKDIR /usr/src/

# copiar o projeto para a imagem
COPY . .

# export porta para acesso remoto
EXPOSE 5000

# rodar comando para baixar dependencias
RUN npm install
RUN npm run build

CMD ["npm", "run", "start"] 