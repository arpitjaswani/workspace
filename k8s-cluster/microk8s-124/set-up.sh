sudo snap install microk8s --classic --channel=1.24

sudo usermod -a -G microk8s $USER

sudo chown -f -R $USER ~/.kube

su - $USER

echo "alias kubectl='microk8s kubectl'" >> ~/.bash_aliases

source ~/.bash_aliases

microk8s enable dns hostpath-storage helm3