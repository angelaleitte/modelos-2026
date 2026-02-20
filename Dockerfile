# Usa Nginx Alpine
FROM nginx:alpine

# Remove o config padrão
RUN rm /etc/nginx/conf.d/default.conf

# Copia sua configuração personalizada
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia todo o conteúdo do projeto para servir no container
COPY . /usr/share/nginx/html

# Expõe a porta interna 80
EXPOSE 80

# Inicia o Nginx
CMD ["nginx", "-g", "daemon off;"]
