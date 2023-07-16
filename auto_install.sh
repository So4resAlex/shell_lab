#!/bin/sh
verifica_user(){
if [ "$(whoami)" != "root" ]; then
    echo "Por favor execute como root"
    exit 1
else
    echo "Bora la, primeira coisa, instalando curl"
    apt-get install curl
fi
}
instala_flatpack(){
    apt-get update && apt-get upgrade
    apt install flatpak
    apt install gnome-software-plugin-flatpak
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    echo "Reinicie para finalizar a instalacao do flatpack"
}
install_oh_my_posh(){
    curl -s https://ohmyposh.dev/install.sh | bash -s && \
    curl -o /tmp/.alex.omp.json  https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/M365Princess.omp.json && \
    mv /tmp/.alex.omp.json /home/"$NOME_USER"/.alex.omp.json
}
VALOR=$1 
NOME_USER=$2

if [ -z "$VALOR" ]; then 
echo "Especifique um argumento" 
exit 1 
fi
case "$VALOR" in
	all)
       verifica_user && \
       instala_flatpack	&& \
       install_oh_my_posh
  ;;
esac
exit 0
