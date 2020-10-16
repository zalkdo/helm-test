# kubernetes-dashboard

https://artifacthub.io/packages/helm/k8s-dashboard/kubernetes-dashboard/2.0.3

kubernetes Version�� Dashboard Version�� ����� ��

## ��ġ

```
# Add kubernetes-dashboard repository
$ helm repo add k8s-dashboard https://kubernetes.github.io/dashboard/
# Deploy a Helm Release named "my-release" using the kubernetes-dashboard chart
$ helm install my-release k8s-dashboard/kubernetes-dashboard
```
Specify each parameter using th --set key=value

extraArgs������ �߾ȵ� values.xml����� ������
```
$ helm install my-release k8s-dashboard/kubernetes-dashboard \
  --set=image.tag=v2.0.3,service.type=NodePort
```
YAML file that specifies the values for the above parameters can be providerd while installing th chart.\n
values.yml : https://github.com/kubernetes/dashboard/tree/master/aio/deploy/helm-chart/kubernetes-dashboard
```
#template�� Ȯ�� �� intall����
$ helm template k8s-dashboard/kubernetes-dashboard -f values.yml
$ helm install my-release k8s-dashboard/kubernetes-dashboard -f values.yml
```

## ������Ʈ
https://artifacthub.io/packages/helm/k8s-dashboard/kubernetes-dashboard/2.0.3 .
Specify each parameter using th --set key=value
```
$ helm upgrade my-release k8s-dashboard/kubernetes-dashboard \
  --set=service.externalPort=8080,resources.limits.cpu=200m
```
YAML file that specifies the values for the above parameters can be providerd while installing th chart
```
$ helm upgrade my-release k8s-dashboard/kubernetes-dashboard -f values.yml
```

## ����
```
helm delete my-release
```