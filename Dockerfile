# Imagen base ligera de Servidor Nginx
FROM nginx:alpine
# Copiar los archivos de documentación dentro de la carpeta pública de Nginx
COPY ./docs /usr/share/nginx/html
# Exponer el puerto 80 para tráfico web
EXPOSE 80
# Comando para iniciar el servidor Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]