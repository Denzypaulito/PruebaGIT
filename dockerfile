# Selecciona la imagen base de Ubuntu
FROM debian

# Establece el directorio de trabajo
WORKDIR /app

# Copia el proyecto en el contenedor
COPY PruebaGIT/papa.sh /app/

ARG argumento
#Instala las dependencias necesarias para ejecutar el proyecto
RUN apt-get update && apt-get install -y bash

# Establece los permisos de ejecución del script principal
RUN chmod +x papa.sh

# Define el comando principal y los argumentos que se pueden pasar al contenedor
ENTRYPOINT ["./papa.sh"]
CMD ["$argumento"]
