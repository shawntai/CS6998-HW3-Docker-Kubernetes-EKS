docker build -t myimage:v1 .  
docker run -d -p 5000:5000 --name mycontainer myimage:v1
docker tag myimage:v1 shawntai/cs6998-hw3
docker push shawntai/cs6998-hw3:latest 