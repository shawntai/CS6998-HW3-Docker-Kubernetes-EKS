docker build -t myimage:v1 .  
docker run -d -p 5000:5000 --name mycontainer myimage:v1
docker tag myimage:v1 shawntai/cs6998-hw3
docker push shawntai/cs6998-hw3:app 

docker build -t shawntai/cs6998-hw3:app .

# minikube commands
minikube start
minikube dashboard
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get pods
kubectl get services
minikube service app-service --url

# eks
aws eks update-kubeconfig --region us-east-1 --name cs6998-hw3-cluster
kubectl apply -f deployment.yaml
kubectl config get-contexts
kubectl config use-context shawntai@cs6998-hw3-cluster.us-east-1.eksctl.io   
kubectl describe pod app-deployment-f6c99bc57-ph6gq