sudo k3s kubectl create -f dashboard.admin-user.yml -f dashboard.admin-user-role.yml
sudo k3s kubectl -n kubernetes-dashboard describe secret admin-user-token | grep ^token
sudo k3s kubectl proxy