#!/bin/sh

./funcoes.sh

VALOR=$1 
NOME_USER=$2

if [ -z "$VALOR" ]; then 
echo "Especifique o primeiro argumento" 
exit 1
	if [ -z "$NOME_USER" ]; then
		echo "Especifique o segundo argumento" 
exit 2
fi
case "$VALOR" in
	all)
       verifica_user && \
       instala_curl && \
       verifica_user && \
       instala_flatpack	&& \
       install_oh_my_posh && \
       instala_configura_vim && \
       manipula_bashrc
  ;;
esac
exit 0
