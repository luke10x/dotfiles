# Dotfiles

installed with install script (note there is a special script for mac)

## Nvim

To get lspcontainers to work on mac, use:

    git clone git@github.com:luke10x/lspcontainers-dockerfiles.git 

and in this repo do:

    docker-compose build tsserver sumneko_lua gopls clangd 

*jdtls* is not installed through lspcontainers
it is not even installed through lspconfig

