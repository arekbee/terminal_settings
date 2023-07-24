

mdcd () {
    mkdir -p "$@"
    cd "$@"
    pwd
}


# ls
alias l='ls -CF'
alias ll='ls -alHF'
alias la='ls -A'
alias ..='cd ..'  
alias ....='cd ../..'


# curl
alias c="curl -L -k --retry-connrefused --retry 7 --retry-max-time 10 --verbose"

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
alias k_a="kubectl apply -f"
alias k_d="kubectl destroy -f"

export K_DRY="--dry-run=client -o yaml"
export K_NOW="--force --grace-period 0"

source <(kubectl completion bash)
complete -F __start_kubectl k

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

# systemctl 
alias sc='systemctl'
if [[ -r /usr/share/bash-completion/completions/systemctl ]]; then
    . /usr/share/bash-completion/completions/systemctl && complete -F _systemctl systemctl sc
fi


# journalctl
alias jc='journalctl'
if [[ -r /usr/share/bash-completion/completions/journalctl ]]; then
    . /usr/share/bash-completion/completions/journalctl && complete -F _journalctl journalctl jc
fi

#  Find Memory-Hungry Processes 
alias ram='while read command percent rss; do if [[ "${command}" != "COMMAND" ]]; then rss="$(bc <<< "scale=2;${rss}/1024")"; fi; printf "%-26s%-8s%s\n" "${command}" "${percent}" "${rss}"; done < <(ps -A --sort -rss -o comm,pmem,rss | head -n 11)'
alias ports='nmap localhost'  
