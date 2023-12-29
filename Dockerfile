FROM ubuntu
RUN apt-get update -y
RUN apt install nginx -y
RUN apt install zip -y
WORKDIR /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/finexo.zip /var/www/html/
RUN ls -l /var/www/html/  
RUN unzip finexo.zip \
    && rm finexo.zip
RUN mv /var/www/html/finexo-html/* .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
