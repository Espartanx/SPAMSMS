 #!/bin/bash

#colores
colorn='\033[30m'
colorr='\033[31m'
colorv='\033[32m'
coloram='\033[33m'
colora='\033[34m'
colorm='\033[35m'
colort='\033[36m'
colorb='\033[37m'
fondon='\033[40m'
fondor='\033[41m'
fondov='\033[42m'
fondoam='\033[43m'
fondoa='\033[44m'
fondom='\033[45m'
fondot='\033[46m'
fondog='\033[47m'
colorset='\033[0m'


#a
termux-open-url  https://youtube.com/@dragonflybyte?si=omLGgDpb5aN8uTbT

sleep 10 
clear 
sleep 4

echo -e ${colora} "  ###################################  "
echo -e ${colora} "  ##                              ###  "
echo -e ${colora} "  ##  ███████╗███╗   ███╗███████╗ ###  "
echo -e ${colora} "  ##  ██╔════╝████╗ ████║██╔════╝ ### "
echo -e ${colora} "  ##  ███████╗██╔████╔██║███████╗ ### "
echo -e ${colora} "  ##  ╚════██║██║╚██╔╝██║╚════██║ ### "
echo -e ${colora} "  ##  ███████║██║ ╚═╝ ██║███████║ ### " 
echo -e ${colora} "  ##  ╚══════╝╚═╝     ╚═╝╚══════╝ ### " 
echo -e ${colora} "  ##      ➴➵➶➴丂卩卂爪➶➴➵➶        ### " 
echo -e ${colora} "  ################################### "
echo -e ${color_reset}

sleep 0.4
echo -e ${colorr}   "/-/- ︻▅𝗕𝘆:𝗲𝘀𝗽𝗮𝗿𝘁𝗮𝗻▆▇◤/-/-"
echo -e ${colorset} 
echo -e ${colorr}
sleep 0.2
 echo "El envío de mensajes no solicitados o spam "
sleep 0.3
echo "es una práctica no ética y puede ser ilegal"
sleep 0.3
echo " en muchos lugares. "
sleep 0.3
echo " El spam puede causar molestias "
sleep 0.3
echo " saturar los servidores de correo "
sleep 0.3
echo "  comprometer la seguridad de los usuarios "
sleep 0.3
echo " Por favor, evita enviar o promover contenido no deseado "
sleep 0.3
echo " o no solicitado"
sleep 0.3
 

echo -e ${coloram}
# Función para enviar los mensajes
enviar_mensajes() {
  # Número de teléfono de destino
  read -p "NUMERO_SIN_ESPACIOS: " numero_destino

  # Mensaje a enviar
  read -p "MENSAJE: " mensaje

  # Número de mensajes a enviar
  read -p "Ingresa EL NUMERO ( 1 y 1000): " num_mensajes

  # Contador de mensajes enviados
  contador=1

  # Bucle para enviar los mensajes
  while [ $contador -le $num_mensajes ]
  do
    echo -e ${colorset}
    echo -e ${colorv} "Mensaje NUMERO: $contador"
    termux-sms-send -n $numero_destino "$mensaje"
    contador=$((contador+1))
  done
}

# Ejecutar la función para enviar los mensajes
enviar_mensajes

echo -e ${colorm} "se a enviado los mensajes con exito"
echo -e ${colora} "fin del script"
