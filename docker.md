# look inside docker from terminal

docker exec -it <CONTAINER NAME from docker ps> bash 

look inside docker:
docker exec -it d5021f036c59 bash 

run specific container:
docker run -p 8888:8888 jupyter/scipy-notebook:17aba6048f44

copy file to container:
docker cp wine.csv d5021f036c59:/home/jovyan/work/wine.csv


# volume - create connection (common place) between docker and file system

docker run -v /Users/ivan/work/docker:/home/jovyan -p 8888:8888 jupyter/scipy-notebook:17aba6048f44
where:
    /Users/ivan/work/docker - folder on local machine
    /home/jovyan - folder in docker


docker build .
from terminal: b7bcb035c722
then:
docker run -v /Users/ivan/work/docker:/home/jovyan -p 8888:8888 b7bcb035c722

or:

docker build -t my_notebook .

docker run -v /Users/ivan/work/docker:/home/jovyan -p 8888:8888 my_notebook


or:

write volumes to docker-compose.yml

docker volume ls

 

# connection with db
For connection with database postgresql in docker-compose write volumes.
For postgres docker password in necessary.


# jupyter localhost address and port

http://127.0.0.1:8888

# commands

docker-compose build 
docker-compose up
or 
docker-compose up --build   

docker-compose down - drop containers


# other commands on docker

docker ps

docker exec -it <mycontainername> bash  

docker exec -it   flask_hello_flask_1  bash

docker exec -it   flask_hello_flask_1  python train_model.py

In Dockerfile put 1 worker and debug variable for terminal watching

docker "native" commands
    build
    images
    run -it
    tag
    ps
    start
    container


!!! deleting conttainers
	rmi
	images prune


    push - to dockerhub







поетри в докере ставит зависимости в какое-то свое вирт окружение

для полного доступа - ставить нужные пакеты в глобальное окружение в докере

программы в докере можно запускать не открывая явно докер
например - запустить через докер
