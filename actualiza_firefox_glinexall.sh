#!/bin/bash

##Script para actualizar Firefox en Guadalinex Edu 2013 / Next-Slim.

#VARIABLES

HOME=~/
DESCARGA=https://download-installer.cdn.mozilla.net/pub/firefox/releases/59.0.2/linux-i686/es-ES/firefox-59.0.2.tar.bz2
DIRECTORIO=firefox*.tar.bz2
LANZADOR=https://usandoguadalinexedu.files.wordpress.com/2018/04/firefox-noroot.png
NEWLANZADOR=firefox-noroot.desktop
ROJO="\033[1;31m"
NORMAL="\033[0m"
AZUL="\033[1;34m"

#Ingresamos al home del usuario.

cd $HOME

#Bajamos la última versión disponible desde la web de Firefox.

echo -e "${ROJO}¡¡¡ATENCIÓN!!! Se va a descargar la última versión de Firefox disponible hasta la fecha [10-4-2018]. ¿Desea continuar?${NORMAL}"

select yn in "Sí" "No" ; do
    case $yn in 
        "Sí" ) break;;
        "No" ) exit 0 ;; 
    esac

done

echo -e "${AZUL}Descargando Firefox...${NORMAL}"

wget $DESCARGA -q --show-progress

#Paso para descomprimir Firefox

echo -e "${AZUL}Firefox se está descomprimiendo en su directorio personal...${NORMAL}"

pv $DIRECTORIO | tar -xjf - -C $HOME

#Descargamos el lanzador del nuevo Firefox, de momento alojado en usandoguadalinexedu.

wget $LANZADOR -q

#Se cambia formato de archivo para poder hacerlo ejecutable y se copia a las rutas correspondientes.

echo -e "${AZUL}Creando rutas y lanzadores...${NORMAL}"

#Nos aseguramos que 'applications' existe

mkdir ~/.local/share/applications 2> /dev/null

mv firefox-noroot.png $NEWLANZADOR

cp $NEWLANZADOR ~/.local/share/applications/

cp $NEWLANZADOR ~/Escritorio

#Borramos archivos residuales

echo -e "${AZUL}Borrando archivos residuales...${NORMAL}"

rm $NEWLANZADOR

rm $DIRECTORIO

echo -e "${ROJO}OK${NORMAL}"

exit 0

