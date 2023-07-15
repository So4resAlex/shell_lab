#!/bin/sh
verifica_user(){
if [ "$(whoami)" != "root" ]; then
    echo "Por favor execute como root"
    exit 1
else
    echo "Bora la"
fi
}
instala_flatpack(){
    apt-get update && apt-get upgrade
    apt install flatpak
    apt install gnome-software-plugin-flatpak
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    echo "Reinicie para finalizar a instalacao do flatpack"
}
VALOR=$1 
if [ -z "$VALOR" ]; then 
echo "Especifique um argumento" 
exit 1 
fi
case "$VALOR" in
	all)
       verifica_user && instala_flatpack	
  ;;
esac
exit 0
