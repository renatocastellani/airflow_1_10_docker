### Docker image básica para Airflow
Repositório para criação de uma imagem docker básica para Airflow 1.10.12 com spark 2.4.5

#### 0. Tenha o docker instalado
#### 1. Faça o clone do repositório
#### 2. Faça a construção da imagem baseada no dockerfile:
```
  docker build -t your_airflow_tag .
```
#### 3. Rode a imagem no seu airflow
```
  docker run -p 8080:8080 -it --name your_airflow_instance_name your_airflow_tag bash
```
#### 4. Acesse a interface web do Airflow:
- [http://localhost:8080](http://localhost:8080)
