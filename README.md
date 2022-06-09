### Docker image básica para Airflow
Repositório para criação de uma imagem docker básica para Airflow 1.10.12 com spark 2.4.5

![image](https://user-images.githubusercontent.com/36852812/170047093-1aaacbe9-0d00-4cab-a4c4-79e0633c0f0a.png)

[Site do Airflow 1.10.12](https://airflow.apache.org/docs/apache-airflow/1.10.12/)

#### 0. Tenha o docker instalado (se seu sistema principal for windows, sugestão: usar ou uma máquina virtual com Ubuntu ou o WSL2 com Ubuntu) :wrench: :computer: :electric_plug:
- [Instalação do docker no Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04-pt)
#### 1. Faça o clone do repositório  :arrow_down: :floppy_disk: :eyes:
Depois entre na pasta onde está o dockerfile
#### 2. Faça a construção da imagem baseada no dockerfile :construction_worker: :clock130: :eight_spoked_asterisk:
```
  docker build -t your_airflow_image_tag .
```
#### 3. Rode a imagem no seu airflow :runner: :runner: :top:
- Será criada uma instância da sua imagem com o nome 'your_airflow_instance_name'
- Compartilhando porta 8080
- Compartilhando a pasta 'dags'
```
  docker run -p 8080:8080 -it -v ${PWD}/dags/:/root/airflow/dags --name your_airflow_instance_name your_airflow_image_tag bash
```
#### 4. Acesse a interface web do Airflow :heavy_check_mark:   
### :sunglasses: [http://localhost:8080](http://localhost:8080) 

#### 5. Para parar e iniciar sua imagem no docker :star2:
- docker stop your_airflow_instance_name
- docker start your_airflow_instance_name
