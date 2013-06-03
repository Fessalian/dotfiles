# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias dotfiles="subl ~/Projects/dotfiles"
# Gem
alias remove_gems='gem list | cut -d" " -f1 | xargs gem uninstall -aIx'
# Ruby
alias psruby="ps aux | grep ruby"
# Rails
alias rc="rails c"
alias rs="rails s"
alias rdbdc="rake db:drop db:create"
alias rdbdcm="rake db:drop db:create db:migrate"
# Parallel tests
alias rpp="rake parallel:prepare"
alias rps="rake parallel:spec"
# Nowshop
alias ns="cd ~/Projects/nowshop"
alias nsb="cd ~/Projects/nowshop-backup"
alias nsc="cd ~/Projects/nowshop-chef"
alias nspsql="psql -h localhost now_shop_development now_shop"
# Nowshop rakes
alias rpu="rake products:update"
# Nowshop deploy
alias nds='bundle exec knife ssh "role:web-staging" -x deploy "sudo chef-client"'
alias ndp='bundle exec knife ssh "role:web-production" -x deploy "sudo chef-client"'
# Nowshop Postgres
alias nspg_dump="pg_dump -Fc --no-acl --no-owner -h localhost -U now_shop now_shop_development > "
alias nspg_restore="pg_restore --verbose --clean --no-acl --no-owner -h localhost -U now_shop -d now_shop_development "
# Nowshop logs
alias nstail_product="tail -f log/development_product.log"
alias nstail_category="tail -f log/development_category.log"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew ruby rake rails3 bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/usr/local/MacGPG2/bin

eval "$(rbenv init -)"

export EDITOR="subl"
