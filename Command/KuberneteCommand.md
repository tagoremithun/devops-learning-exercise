kubectl create deployment ku-app --image=789017709123452/ku-app

minikube start
minikube dashboard





kubectl expose deployment ku-app --type=ClusterIP --port=8080
kubectl expose deployment ku-app --type=LoadBalancer --port=8080
kubectl expose deployment ku-app --type=NodeIP --port=8080

kubectl get services

minikube service ku-app 

kubectl scale deployment ku-app --replicas=5
