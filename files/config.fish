# Set ssh auth sock
set -x SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

# Disable virtual env prompts, already handled by bobthefish
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# Configure personal path
set -gx PATH ~/.bin $PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
end
