# kubernetes-dashboard

https://artifacthub.io/packages/helm/k8s-dashboard/kubernetes-dashboard/2.0.3

kubernetes Version�� CA Version�� ����� ��.

## ��ġ

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
YAML file that specifies the values for the above parameters can be providerd while installing th chart.
values.yml : https://github.com/kubernetes/dashboard/tree/master/aio/deploy/helm-chart/kubernetes-dashboard
```
$ helm install kubernetes-dashboard/kubernetes-dashboard --name my-release -f values.yml
```

## ������Ʈ
https://artifacthub.io/packages/helm/k8s-dashboard/kubernetes-dashboard/2.0.3 .
Specify each parameter using th --set key=value
```
$ helm install kubernetes-dashboard/kubernetes-dashboard --name my-release \
  --set=service.externalPort=8080,resources.limits.cpu=200m
```
YAML file that specifies the values for the above parameters can be providerd while installing th chart
```
$ helm install kubernetes-dashboard/kubernetes-dashboard --name my-release -f values.yaml
```

## ����
```
helm delete my-release
```