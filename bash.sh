#!/bin/bash


# files
mdcd () {
    mkdir -p "$@"
    cd "$@"
    pwd
}

alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'


# ls
alias dir="ls"
alias l='ls -CF'
alias ll='ls -alHF'
alias la='ls -lA'
alias ..='cd ..'  
alias ....='cd ../..'
alias rmd='/bin/rm  --recursive --force --verbose '

# curl
alias c="curl -L -k --retry-connrefused --retry 7 --retry-max-time 10 --verbose"

# git
alias g=git

#python
alias p=python3
alias p_server="python3 -m http.server"

# docker
alias d=docker
alias d_pune='docker system prune --all -volumes'

# crictl
alias cri="sudo crictl --runtime-endpoint unxi:///run/containerd/containerd.sock"


# k8s
alias k=kubectl
alias k_a="kubectl apply -f"
alias k_d="kubectl describe"

alias k_all="kubectl get all -A --show-labels"
alias k_tail="tail "
alias k_context="kubectl config set-context --current --namespace"
alias k_drain="kubectl drain --ignore-deamonsets"

export K_DRY="--dry-run=client -o yaml"
export K_NOW="--force --grace-period 0"
export K_NSKS='-n kube-system'

source <(kubectl completion bash)
complete -F __start_kubectl k

kns ()
{
[ $# -eq 0 ] && kubectl config get-contexts | grep --color=auto '^\*' | awk '{print $5}' || kubectl config set-context $(kubectl config current-context) --namespace=$1
}

alias kctx="kubectx"

# helm
alias h=helm
alias h_l="helm list --all-namespaces --date"

# minikube

alias m=minikube
alias m_s='minikube start --alsologtostderr -v=7'


# ansible
alias a=ansible

# terraform
alias tf=terraform
alias tf_graph='terraform graph | dot -o tf_graph.png -Tpng'
alias tf_docs='terraform-docs markdown . >> _README.md'
alias tg=terragrunt
export TF_LOG_PATH=./log_$(date +"%Y%m%d_%H%M%S").log

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

# Show open ports
alias openports='netstat -nape --inet'
alias openports2='nmap localhost'

# Show current network connections to the server
alias ipview="netstat -anpl | grep :80 | awk {'print \$5'} | cut -d\":\" -f1 | sort | uniq -c | sort -n | sed -e 's/^ *//' -e 's/ *\$//'"


# dotnet 
function _dotnet_bash_complete()
{
  local cur="${COMP_WORDS[COMP_CWORD]}" IFS=$'\n' # On Windows you may need to use use IFS=$'\r\n'
  local candidates

  read -d '' -ra candidates < <(dotnet complete --position "${COMP_POINT}" "${COMP_LINE}" 2>/dev/null)

  read -d '' -ra COMPREPLY < <(compgen -W "${candidates[*]:-}" -- "$cur")
}

complete -f -F _dotnet_bash_complete dotnet




# editor 
alias v=vi
alias tab2space="expand -t 2 "
