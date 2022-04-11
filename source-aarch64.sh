#!/bin/sh
# jeonins -i /ruta/del/archivo nombredelejec

echo $1 > /dev/null
echo $2 > /dev/null
echo $3 > /dev/null

#Variables de argumentos
opcion=$(echo $1)
ruta=$(echo $2)
nombre=$(echo $3)
#------


#Variables Estáticas
rutadelsistema=/data/data/com.termux/files/usr/bin
rutatemporal=/data/data/com.termux/files/usr/tmp
arquitectura="aarch64 (Android-ARM64) (64-Bits)."
opt=/data/data/com.termux/files/usr/opt/JeonInstaller
repair=/data/data/com.termux/files/usr/opt/JeonInstaller/repair
installed=/data/data/com.termux/files/usr/opt/JeonInstaller/installed
#---------

#Script oculto...
#Esto crea el directorio del instalador
if [ -x "$opt" ]; then
echo "E"
echo
else
echo
echo "NE"
echo
mkdir /data/data/com.termux/files/usr/opt/JeonInstaller
mkdir /data/data/com.termux/files/usr/opt/JeonInstaller/repair
mkdir /data/data/com.termux/files/usr/opt/JeonInstaller/installed
fi



#Script
#-Mensaje que saldrá cuando no se incluye ningún argumento.-
if [ -z "$opcion" ]; then
echo "JeonInstaller: Instalador de binarios a ruta del sistema:"
echo "$rutadelsistema"
echo
echo
echo
echo "Error de ejecución: Faltó un argumento."
echo "Uso: jeonins [opción] [ruta] [nombre]"
echo "     jeonins -i '/ruta/del/archivo' nombredelpaquete"
echo "     jeonins -d nombredelpaquete"
echo "     jeonins -l"
echo "     jeonins -r nombredelpaquete"
echo "     jeonins -a"
echo
echo
exit
fi
#----


#--Aquí se programarán los argumentos.--
if [ "$opcion" = "-i" ]; then
sleep 2s
echo
echo "Preparando instalación..."
echo "Datos de instalación:"
echo "Paquete: $nombre"
echo "Ruta del paquete: $ruta"
echo "Instalando a: /usr/bin/$nombre"
echo
echo
echo "¿Desea proceder con la instalación?"
echo "Y/Yes: Sí - N/No: No"
read eleccion
if [ "$eleccion" = "Y" ]; then
echo "Instalando..."
echo
echo "Copiando el paquete a una ruta temporal..."
cp "$ruta" "$rutatemporal/$nombre"
sleep 5s
echo
echo
echo "Instalando el paquete en el sistema..."
cp "$rutatemporal/$nombre" "$rutadelsistema/$nombre"
sleep 5s
echo
echo
echo "Estableciendo permisos de ejecución.."
rm "$rutatemporal/$nombre"
chmod +x "$rutadelsistema/$nombre"
echo
echo
echo "Aplicando algunos retoques..."
sleep 5s
echo
echo "I love you <3" > /$rutatemporal/askdkfkdissididkfjfjfkfeifispapsofifkf.tmp
echo
echo
echo
echo "***INSTALACIÓN REALIZADA!***"
echo
echo
echo "Se recomienda reiniciar el terminal, o Termux, para que puede ejecutar bien el paquete que instaló."
echo
echo "Liberando..."
sleep 2s
exit
elif [ "$eleccion" = "Yes" ]; then
echo "Instalando..."
echo
echo "Copiando el paquete a una ruta temporal..."
cp "$ruta" "$rutatemporal/$nombre"
sleep 5s
echo
echo
echo "Instalando el paquete en el sistema..."
cp "$rutatemporal/$nombre" "$rutadelsistema/$nombre"
sleep 5s
echo
echo
echo "Estableciendo permisos de ejecución.."
rm "$rutatemporal/$nombre"
chmod +x "$rutadelsistema/$nombre"
echo
echo
echo "Aplicando algunos retoques..."
sleep 5s
echo
echo "I love you <3" > /$rutatemporal/askdkfkdissididkfjfjfkfeifispapsofifkf.tmp
echo
echo
echo
echo "***INSTALACIÓN REALIZADA!***"
echo
echo
echo "Se recomienda reiniciar el terminal, o Termux, para que puede ejecutar bien el paquete que instaló."
echo
echo "Liberando..."
sleep 2s
elif [ "$eleccion" = "N" ]; then
echo
echo
echo "Abortando..."
sleep 3s
exit
elif [ "$eleccion" = "No" ]; then
echo
echo
echo "Abortando..."
sleep 3s
exit
else
echo "Opción desconocida, abortando..."
echo
sleep 3s
exit
fi
sleep 3s
echo "" > /dev/null
echo "Installed." > /data/data/com.termux/files/usr/opt/JeonInstaller/installed/$nombre.txt
exit
fi


if [ "$opcion" = "-d" ]; then
echo
echo "Inicializando la desinstalación..."
echo "Datos de la desinstalación:"
echo "Nombre: $2"
echo "Ruta de instalación: $rutadelsistema/$2"
echo "Arquitectura: $arquitectura."
echo
echo
sleep 2s
echo "Procediendo con la desinstalación..."
sleep 3s
rm "$rutadelsistema/$2"
rm "$opt/repair/$2"
rm "$installed/$2.txt"
echo
echo
echo "Desinstalación completada."
echo
sleep 1s
exit
fi


if [ "$opcion" = "-r" ]; then
echo
echo "Inicializando la reparación..."
echo "Datos de la reparación:"
echo "Nombre: $2"
echo "Ruta del paquete dañado: $rutadelsistema/$2"
echo "Arquitectura: $arquitectura"
echo
echo
sleep 2s
echo "Procediendo con la reparación..."
rm "$rutadelsistema/$2"
cp "$repair/$2" "$rutadelsistema/$2"
sleep 4s
echo "Permitiendo ejecución..."
chmod 770 "$rutadelsistema/$2"
sleep 1s
echo
echo
sleep 2s
echo "Reparación completada."
sleep 1s
exit
fi

if [ "$opcion" = "-a" ]; then
echo
echo
echo "Proyecto JeonInstaller"
echo
echo "Inicio del proyecto: Sábado 2 de Abril del 2022 a las 9:45AM"
echo "Creador: xJeon"
echo "Lenguaje: Linux Bash/Shell"
echo "Versión: 1.0 (02/04/22-11:10)"
echo "Idioma: Español (México)"
echo "Creado en Uruapan, Michoacán, México."
echo "***Hecho en México***"
echo
echo
echo
echo "Este proyecto nació de mi gusto en la programación, y mi aburrimiento hoy (día de inicio del proyecto)."
echo "Raramente la primera vez que escribo tantas líneas de código (220 y contando desde aquí xd)"
echo "en tan poco tiempo (2h), porque usualmente tardo más. xd"
echo
echo "Personalmente lo hice para usarlo yo mismo, en otras cosas que programe y así;"
echo "pero si alguien ajeno a mí (creador) tiene este mismo programa"
echo "pues buenos días/tardes/noches xd."
echo "Al final fué porque decidí quizás subirlo a Github."
echo "Para ver si le ayuda o facilita un mínimo el trabajo a alguien, y si es así, pues qué honor."
echo "Igual, a esto le falta mucho para mejorar."
echo "En el sector de la ciudad donde vivo, no hay internet, no puedo aprender tanto de Bash como quisiera."
echo "Pero le busco y le intento hacerlo lo mejor que puedo."
echo "Pero pues, este programa fué creado por un humano, por tanto no es perfecto, y puede tener errores."
echo "Si usted encuentra algún error en el programa, algún bug, o quisiera ser parte del proyecto;"
echo "Estaría bastante agradecido de ser merecedor de su colaboración, sea reportando errores o colaborando en algo del proyecto."
echo "Los medios de contacto conmigo son estos:"
echo
echo
echo
echo "WhatsApp: +1 (626) 210 6572"
echo "Instagram: @xjeon_jsjs"
echo "Telegram: +1 (626) 210 6572"
echo "GitHub: https://github.com/jeonjsj/jeoninstaller"
echo
echo
echo
echo "Cualquier colaboración o reporte será muy bien recibida, y estaré muy agradecido."
echo
echo "Take care :)."
echo
exit
fi
#--------------




#-------
