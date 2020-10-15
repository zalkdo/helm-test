# kubernetes-dashboard

https://artifacthub.io/packages/helm/k8s-dashboard/kubernetes-dashboard/2.0.3

kubernetes Version과 CA Version을 맞춰야 함.

## 설치

eks terraform apply 후 'aws_account_id'를 values.yml에 입력

```
# Add kubernetes-dashboard repository
$ helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
# Deploy a Helm Release named "my-release" using the kubernetes-dashboard chart
$ helm install kubernetes-dashboard/kubernetes-dashboard --name my-release
```
Specify each parameter using th --set key=value
```
$ helm install kubernetes-dashboard/kubernetes-dashboard --name my-release \
  --set=image.tag=v2.0.3,service.type=NodePort
```

## 업데이트
https://artifacthub.io/packages/helm/k8s-dashboard/kubernetes-dashboard/2.0.3
Specify each parameter using th --set key=value
```
$ helm install kubernetes-dashboard/kubernetes-dashboard --name my-release \
  --set=service.externalPort=8080,resources.limits.cpu=200m
```
YAML file that specifies the values for the above parameters can be providerd while installing th chart
```
$ helm install kubernetes-dashboard/kubernetes-dashboard --name my-release -f values.yaml
```

## 삭제
```
helm delete my-release
```