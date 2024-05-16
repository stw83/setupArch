# Set ssh auth sock
set -x  SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
  
# Disable virtual env prompts, already handled by bobthefish
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
  
# Ansible config
set -x ANSIBLE_VAULT_PASSWORD_FILE ~/.ansible_vault_pass.txt
# set -x ANSIBLE_VENV_NAME venv_ansible
set -x ANSIBLE_VENV_NAME blub
  
# Configure personal path
set -gx PATH ~/bin $PATH
set -gx PATH ~/.bin $PATH
set -gx PATH ~/.meteor $PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx ATUIN_NOBIND "true"
    atuin init fish | source

    # bind to ctrl-r in normal and insert mode, add any other bindings you want here too
    bind \cr _atuin_search
    bind -M insert \cr _atuin_search
end

alias autorandr_office "autorandr -l office"
alias autorandr_home "autorandr -l home"
