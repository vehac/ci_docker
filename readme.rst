###################
CodeIgniter
###################

Docker - CodeIgniter 3.1.11 (PHP 7.1) - MariaBD - Memcached

***************
Inicio
***************

- Sacar copia de carpeta development.dist y nombrarla development para usar la carpeta developmet en entorno local
- Colocar credenciales y configuraciones de entorno local en los archivos que se encuentran en la carperta development
- Carpeta donde se coloca los archivos estaticos /static (js, css)
- Carpeta donde se coloca los archivos temporales /upload/temporal
- Al levantar el proyecto se crea la base de datos db_ci
- En la carpeta docker se encuentra el archivo my_db.sql que se carga en la base de datos db_ci
- En la carpeta docker se encuentra el virtualhost para el proyecto, el archivo es localhost.conf
- En la carpeta docker se encuentra el archivo init.sh que permite asignar permisos a carpeta cache y temporal tambien permite cargar el sql del archivo my_db.sql en la base de datos db_ci
- Se agrega archivo .htaccess donde se coloca regla para omitir index.php de las url's

***************
Docker
***************

- Para la primera vez que se levanta el proyecto con docker o se cambie los archivos de docker ejecutar:
    sudo docker-compose up --build -d
- En las siguientes oportunidades ejecutar
    Para levantar:
        sudo docker-compose start
    Para detener:
        sudo docker-compose stop
- Para ver la web
    Sin virtualhost:
        http://localhost:9080
    Con virtualhost:
        Si se usa Linux, agregar en /etc/hosts de la pc host la siguiente linea: 7.14.21.28    local.domain.com
- Para ingresar al server con docker ejecutar:
    sudo docker-compose exec webserver bash
- Para instalar dependecias con composer, ejecutar lo siguiente dentro del server con docker
    composer -n install