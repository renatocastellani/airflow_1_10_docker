### Docker image básica para Airflow
Repositório para criação de uma imagem docker básica para Airflow 1.10.12 com spark 2.4.5

#### 0. Tenha o docker instalado
- [Instalação do docker no Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04-pt)
#### 1. Faça o clone do repositório
Depois entre na pasta onde está o dockerfile
#### 2. Faça a construção da imagem baseada no dockerfile:
```
  docker build -t your_airflow_image_tag .
```
#### 3. Rode a imagem no seu airflow
```
  docker run -p 8080:8080 -it --name your_airflow_instance_name your_airflow_image_tag bash
```
#### 4. Acesse a interface web do Airflow:
- [http://localhost:8080](http://localhost:8080)
