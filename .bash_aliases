

mkcd () {
    mkdir -p "$1"
    cd "$1"
}

alias g=git 
alias d=docker
alias d_pune='docker system prune --all -volumes'
alias k=kubectl
alias a=ansible
alias m=minikube
alias m_s='minikube start --alsologtostderr -v=7'
alias tf=terraform
alias tf_graph='terraform graph | dot -o tf_graph.png -Tpng'
alias tf_docs='terraform-docs markdown . >> _README.md'
alias tg=terragrunt
alias p=python3


