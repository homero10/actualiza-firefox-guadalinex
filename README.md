# actualiza-firefox-guadalinex
Actualiza Firefox sin necesidad de ser root en los equipos clientes con Guadalinex Edu de los coles andaluces. Válido para cualquier distro Linux.

Para tenerlo en nuestras Guadalinex Edu es muy sencillo. Tan solo hay que seguir los siguientes pasos:

1- Nos bajamos el contenido de este repositorio. Para ello nos situaremos sobre Clone or download (botón verde) y acto seguido haremos clic en Download ZIP. Se nos descargarán los archivos necesarios.

2- Abrimos una terminal. En Guadalinex Edu 2013 esta se encuentra en Aplicaciones > Accesorios > Terminal, y en las nuevas Guadalinex Edu Next y Slim se encuentra en Aplicaciones > Herramientas del sistema > Terminal o Lxterminal respectivamente.

3- Una vez tengamos abierta la terminal, nos situaremos sobre el directorio Descargas. Escribiremos cd Descargas/

4- Ya estamos en la carpeta correspondiente. Ahora hay que descomprimir el archivador descargado en el paso 1. Al tratarse de un .zip escribirimos la orden apropiada, que será unzip seguido del nombre de nuestro archividador, por tanto teclearemos unzip actualiza-firefox-guadalinex-master.zip

5- ¡Bien! Ya tenemos el archivador descomprimido en una carpeta. Ahora nos tocará acceder a dicho directorio.

6- Para acceder a la carpeta que contiene nuestros archivos descomprimidos teclearemos de nuevo cd actualiza-firefox-guadalinex-master/

7- Es el momento de hacer correr al script, no sin antes darle permisos de ejecución. Esto es relativamente sencillo, con un chmod +x actualiza_firefox_glinexall.sh lo tendremos listo.

8- ¡Ahora sí! Llegó el momento final. Para ejecutar nuestro script simplemente habrá que insertar en la terminal la siguiente orden: ./actualiza_firefox_glinexall.sh 

9- Antes de hacer nada, el sript nos preguntará si queremos realizar el proceso de descarga del nuevo Firefox. Responderemos con el número 1 y acto seguido pulsaremos la tecla Intro.

El script hará todo el trabajo sin necesidad de que el usuario tenga que intervenir de alguna manera. Cuando haya acabado nos mostrará un OK rojo en pantalla.

Enhorabuena, hemos descargado una versión de Firefox completamente funcional para poder usar una versión más reciente de dicho navegador en Guadalinex Edu 2013 y Guadalinex Edu Next/Slim. 

Para diferenciar esta versión con la instalada en el sistema (la anterior versión no se borrará y por tanto ambas convivirán perfectamente) se nos creará un acceso directo tanto en el escritorio de Guadalinex Edu como en el menú Aplicaciones > Internet. A simple vista se diferencia de la versión incluida en el sistema por el color del logotipo de Firefox que en nuestro caso se trata de un color azul (a diferencia del naranja que viene por defecto con el Firefox de serie).
