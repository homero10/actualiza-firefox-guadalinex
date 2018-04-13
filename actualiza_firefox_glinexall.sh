#!/bin/bash

##Script para actualizar Firefox en Guadalinex Edu 2013 / Next-Slim.

#VARIABLES

HOME=~/
DESCARGA=https://download-installer.cdn.mozilla.net/pub/firefox/releases/59.0.2/linux-i686/es-ES/firefox-59.0.2.tar.bz2
DIRECTORIO=firefox*.tar.bz2
LANZADOR=https://raw.githubusercontent.com/homero10/actualiza-firefox-guadalinex/master/firefox-noroot.desktop
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

#Descargamos el lanzador del nuevo Firefox, de momento alojado en usandoguadalinexedu. TODO: ahora alojado en github, no hace falta conversión de .png a .desktop

wget $LANZADOR -q

#Se cambia formato de archivo para poder hacerlo ejecutable y se copia a las rutas correspondientes. TODO: Ya no es necesario, se comenta.

echo -e "${AZUL}Creando rutas y lanzadores...${NORMAL}"

#Nos aseguramos que 'applications' existe

mkdir ~/.local/share/applications 2> /dev/null

#mv firefox-noroot.png $NEWLANZADOR

cp $NEWLANZADOR ~/.local/share/applications/

cp $NEWLANZADOR ~/Escritorio

#Borramos archivos residuales

echo -e "${AZUL}Borrando archivos residuales...${NORMAL}"

rm $NEWLANZADOR

rm $DIRECTORIO

echo -e "${ROJO}OK${NORMAL}"

#Añadimos notificación

notify-send 'Firefox se ha actualizado correctamente' 'Puede acceder a la nueva instalación desde Aplicaciones > Internet o desde el acceso directo creado en el escritorio del sistema' -i firefox-nightly

exit 0

