eval "$(/opt/homebrew/bin/brew shellenv)"
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zplug/zplug"

# Prezto framework
zplug "sorin-ionescu/prezto", \
  use:"init.zsh", \
  hook-build:"ln -s $ZPLUG_HOME/repos/sorin-ionescu/prezto ~/.zprezto"

zstyle ':prezto:*:*' color 'yes'
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'utility' \
  'completion' \
  'prompt' \
  'python' \
  'fasd' \
  'tmux'

zstyle ':prezto:module:prompt' theme 'powerline'
zstyle ':prezto:module:editor' key-bindings 'vi'

zplug reegnz/jq-zsh-plugin
zplug chitoku-k/fzf-zsh-completions

if ! zplug check; then
    zplug install
fi

zplug load

autoload -U compinit; compinit
