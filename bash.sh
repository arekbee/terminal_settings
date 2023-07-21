

mdcd () {
    mkdir -p "$1"
    cd "$1"
    pwd
}


# ls
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'


# git
alias g=git

#python
alias p=python3


# docker
alias d=docker
alias d_pune='docker system prune --all -volumes'


# k8s
alias k=kubectl
alias k_n="kubectl config set-context --current --namespace"
export K_DRY="--dry-run=client -o yaml"
export K_NOW="--force --grace-period=0"
alias m=minikube
alias m_s='minikube start --alsologtostderr -v=7'


# ansible
alias a=ansible

# terraform
alias tf=terraform
alias tf_graph='terraform graph | dot -o tf_graph.png -Tpng'
alias tf_docs='terraform-docs markdown . >> _README.md'
alias tg=terragrunt
export TF_LOG_PATH=./log_$(date +"%Y%m%d_%H%M%S").txt

