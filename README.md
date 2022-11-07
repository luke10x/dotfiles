# Dotfiles

installed with install script (note there is a special script for mac)

## Nvim

Mostly followed Josean's 
[How to setup Neovim on Mac](https://www.youtube.com/watch?v=vdn_pKJUda8)

Additionally:

- I tried to use lspcontainers as much as possible
- I also use jdtls for java development

To get lspcontainers to work on mac, use:

    git clone git@github.com:luke10x/lspcontainers-dockerfiles.git 

and in this repo do:

    docker-compose build tsserver sumneko_lua gopls clangd 

Apparently, Mason works quite well on top of LSPs
(additional plugins and linters work on top of sumneko_lua and TS LSPs)

- *jdtls* is not installed through lspcontainers
- it is not even installed through lspconfig

gopls is not quite working...

