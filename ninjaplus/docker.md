# Ambiente de testes

## Baixar as imagens

docker pull postgres
docker pull dpage/pgadmin4
docker pull qaninja/ninjaplus-api
docker pull qaninja/ninjaplus-web

### Verificar imagens

docker images

### Criar a rede  Docker

docker network create --driver bridge robot

### Subir o Banco de Dados

docker run --name pgdb --network=robot -e "POSTGRES_PASSWORD=qaninja" -p 5432:5432 -v var/lib/postgresql/data -d postgres

### Subir o Administrador do Banco de Dados (PgAdmin)

docker run --name pgadmin --network=robot -p 15432:80 -e "PGADMIN_DEFAULT_EMAIL=root@qaninja.io" -e "PGADMIN_DEFAULT_PASSWORD=qaninja" -d dpage/pgadmin4

### Subir a API 

docker run --name ninjaplus-api --network=robot -e "DATABASE=pgdb" -p 3000:3000 -d qaninja/ninjaplus-api

### Subir a Aplicação Web

docker run --name ninjaplus-web --network=robot -e "VUE_APP_API=http://ninjaplus-api:3000" -p 5000:5000 -d qaninja/ninjaplus-web

### Verificar os Containers no Ar

docker ps

### IP

Mac, windows, linux IP 127.0.0.1
Docker Toobox IP 192.168.99.100

configurar host

# RobotFramewor
127.0.0.1	pgdb
127.0.0.1	pgadmin
127.0.0.1	ninjaplus-api
127.0.0.1	ninjaplus-web

### Importante:​
### Quando você reiniciar o seu computador, certifique-se que o Docker esteja online e suba containers​ novamente:

docker start pgdb
docker start pgadmin
​docker start ninjaplus-api
​docker start ninjaplus-web

### Se alguma coisa der errado e for necessário refazer a aula, voce poderá remover os containers com os seguintes comandos:

docker rm -f ​pgdb
docker rm -f ​pgadmin
docker rm -f ​ninjaplus-api
docker rm -f ​ninjaplus-web

Comando para executar robot -d ./results ./specs

Instalar Python -> Realizar Configuração de Instalação
Instalar Console emulator -> Realizar Configuração de Instalação 
Instalar VScode 
	extensão do Python, Robot Framework, Hiper Term Theme, vscode icons

Criar uma pasta robot
	
	abrir o cmder e executar o comando pip install robotframework

Sites de Pesquisa
	https://robotframework.org/
	https://selenium-python.readthedocs.io/

Dentro da Pasta robot
	
	abrir o cmder e executar o comando pip install robotframework-seleniumlibrary
	Baixar e instalar os drivers do browser que serão utilizados no projeto. Deixar eles dentro da pasta windows.

	Criar um pasta com nome de Specs
		Dentro de Specs criar um arquivo nome_do_test.robot

	Comando para execução robot\specs, para criar relatorio executar robot -d results specs\

    pip install robotframework-seleniumlibrary

    pip install -U psycopg2

### Test de API

	pip install -U requests
	pip install -U robotframework-requests



	



    