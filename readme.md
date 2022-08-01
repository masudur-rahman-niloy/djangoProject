#Sample Django Project

Sample django project to run using docker. The database will run on a docker container and the app will run on another container. 

Deploy the database before deploying the app. 

Deploy the both container in a bridge network

Steps to run
1. Create a docker network using `docker network create myNetwork`
2. Run mysql container using `docker run -d --name db --network myNetwork -e MYSQL_ROOT_PASSWORD=my-secret-pw -e MYSQL_DATABASE=django_project mysql`
3. Build the app using `docker build -t django_app .`
4. Now run the app `docker run -d -p 8000:8000 --name django_api --network myNetwork django_app`
5. Verify the container running by watching the container list `docker container ls`
