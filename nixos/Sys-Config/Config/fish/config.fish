if status is-interactive
    # Commands to run in interactive sessions can go here
end

# General Aliases 
alias cl clear

# File and Directory
alias th touch
alias md mkdir
alias rd 'sudo rm -rf'
alias rf 'rm'
alias sfc 'cat ~/.config/fish/config.fish | less'

#####################################################

# Terraform Aliases

alias tf terraform



#####################################################

# Docker Aliases

alias d docker

alias dcl 'd container ls'
alias dcla 'dcl -a'

alias di 'd images'
alias dil 'd image ls'
alias dipsh 'di push'
alias dipl 'di pull'
alias diimp 'di import'
alias diins 'di inspect'
alias dirm 'di rm'




#####################################################

kubectl completion fish | source


# kubernetes aliases
alias k kubectl
alias kd 'k describe'
alias kg 'k get'
alias kaf 'k apply -f'
alias kdel 'k delete'
alias ke 'k edit'
alias kci 'k cluster-info'
alias kccc 'k config current-context'
alias kcdc 'k config delete-context'
alias kcsc 'k config set-context'
alias kcuc 'k config use-context'
alias kdd 'kd deployment'
alias kdeld 'kdel deployment'
alias kdeli 'kdel ingress'
alias kdelp 'kdel pods'
alias kdels 'kdel svc'
alias kdelsec 'kdel secret'
alias kdi 'kd ingress'
alias kdp 'kd pods'
alias kds 'kd svc'
alias kdsec 'kd secret'
alias ked 'ke deployment'
alias kei 'ke ingress'
alias kep 'ke pods'
alias kes 'ke svc'
alias keti 'k exec -ti'
alias kgd 'kg deployment'
alias kgi 'kg ingress'
alias kgp 'kg pods'
alias kgrs 'kg rs'
alias kgs 'kg svc'
alias kgsec 'kg secret'
alias kl 'k logs'
alias klf 'k logs -f'
alias krh 'k rollout history'
alias krsd 'k rollout status deployment'
alias kru 'k rollout undo'
alias ksd 'k scale deployment'
