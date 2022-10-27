#!/bin/bash
#
if [ "$EUID" -ne 0 ]
        then echo "Porfavor, me execute como root."
        exit 1
fi

chmod 755 MrRobot/robo.sh
cp MrRobot/robo.sh /usr/bin/robo
rm -rf MrRobot
echo "Instalando dependencias ..."
apt install -y  gnustep-gui-runtime 
echo "Espero que aprecie :)"
echo
echo "Assinado por Gabriel"
echo "Também conhecido como Caostic"
