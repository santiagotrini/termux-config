#! /bin/bash

clear

gum style --border normal --margin "1" --padding "1 2" --border-foreground 212 "Hola! Vamos a configurar $(gum style --foreground 212 'Termux')"

# variables
MIRROR="deb https://packages-cf.termux.dev/apt/termux-main stable main" 
PKGS="agg automake asciinema bat bison clang cmatrix cowsay curl flex fortune git glow gum jq libsixel lsix m4 make man mariadb nano ncurses-utils neofetch nodejs openssh perl python rxfetch sl tar tmux tree tty-clock unzip vim wget which"

# choose mirrors
gum spin --title "Configurando mirrors" -- sleep 1 
echo $MIRROR > $PREFIX/etc/apt/sources.list
echo "$(gum style --foreground 120 '✓')  Configurando mirrors"

# update packages
gum spin --title "Buscando actualizaciones" -- pkg update -y 
echo "$(gum style --foreground 120 '✓')  Buscando actualizaciones"
gum spin --title "Actualizando paquetes" -- pkg upgrade -y
echo "$(gum style --foreground 120 '✓')  Actualizando paquetes"

# install packages
gum spin --title "Instalando unos (cuantos) paquetes" -- pkg i -y $PKGS 
echo "$(gum style --foreground 120 '✓')  Instalando unos (cuantos) paquetes" 

# install vim-plug
gum spin --title "Instalando vim-plug" -- curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "$(gum style --foreground 120 '✓')  Instalando vim-plug"

# copy .vimrc and install plugins
gum spin --title "Configurando vim" -- cp .vimrc ~ ; vim -c 'PlugInstall' -c 'qa!' &> /dev/null
echo "$(gum style --foreground 120 '✓')  Configurando vim"

# unzip spim, compile and install
gum spin --title "Instalando spim" -- bash ./spim.sh
echo "$(gum style --foreground 120 '✓')  Instalando spim"
echo 

