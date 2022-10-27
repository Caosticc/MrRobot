#!/bin/bash
#robo


#---------------Váriaveis---------------#

NUM=$(($RANDOM%4))
CRIADOR="Gabriel"
RM=93506

#---------------Funções-----------------#

function inicio(){
  case $NUM in
        *'0'*)
                echo "Bem vindo ao MrRobot"
        	echo 
        	echo "Caso precise de ajuda, digite help"
        	echo
        	read -p "Fale com o robô MrRobot: " PERGUNTA
        ;;
        *'1'*)
                echo "Prazer meu nome é MrRobot!"
        	echo 
        	sleep 1
        	echo "Mas sou conhecido por Mr.Zueirinha"
                echo
		echo "Se necessitas de alguma ajuda digite help"
		echo
        	read -p "Pergunte algo ou seja meu alvo da zoeira: " PERGUNTA
        ;;
        *'2'*)
		echo "Se necessitas de alguma ajuda digite help"
		sleep 1
		echo "Qual é a resposta da pergunta What is the answere?"
		sleep 1
		echo "Resposta: what. Entenderam?"
		sleep 1
		read -p "Não? ok, deixe para lá. Faça sua pergunta: " PERGUNTA
        ;;
        *'3'*)
                echo "Prazer! sou o mestre da zueira"
                sleep 1
		echo "Se necessitas de alguma ajuda digite help"
                echo
		sleep 1
                read -p "Não quer me fazer alguma pergunta para eu não te zuar?: " PERGUNTA
        ;;
        esac

}
function ajuda(){
	echo "Esse programa é um robo desenvolvido como dever(checkpoint) da matéria de Linux."
	echo 
	echo "O objetivo dele é ser um robo da zueira"
	echo 
	echo "Para usa-lo, digite ./robo e quando aparecer a mensagem de pergunta, responda com palavras minusculas"
	echo   
	echo "Para essa mensagem, digite help"
	echo
	echo "PS: esse é meu primeiro programa em shell script"
}
function conectividade() {
	read -p "Por favor me digite um IP para eu verificar seu status: " HOST
COMMAND="ping -c4 -q $HOST" 
$COMMAND
	if [ $? -eq 0 ]
	then
		echo -e "\nO Servidor está online"
	else
		echo -e "\nO servidor está Offline"
	fi
}
function vulnerabilidade(){
	read -p "qual o host que você quer escanear: " IP
		nmap -A -sC -sV $IP 2>/dev/null
}
function servicos(){
	echo -e  "Os serviços rodando por agora são"
	echo
		ss -atun
}
function namorar(){
case $NUM in
	*0*)
	       echo "Eu não namoro, sou uma inteligência artificial"
	  ;;
 	*1*)
      	       echo "Sem tempo irmão"
	  ;;
  	*2*)
	       echo "Namorar, nem sei o que é isso!"
	  ;;
 	*3*) 
	       echo "Isso é um segredo"
	  ;;
esac

}
function atualize(){
	echo "me atualizando"
	sudo apt upgrade
}
function versao ()
{
	echo "Eu me sinto novo em folha  mas é sempre bom checar, né?"
	echo "Checando Reparos..."
	sleep 1
		sudo apt upgrade -y
	echo ""
	echo "Confirmado, reparos estão em dia  :)"
}
function tempo(){
h=$(date +"%H")
	if [ $h -gt 6 -a $h -le 12 ]
	then
		echo "Bom Dia"
	elif [ $h -gt 12 -a $h -le 16 ]
	then 
		echo "Boa Tarde"
	elif [ $h -gt 16 -a $h -le 20 ]
	then
		echo "Boa Noite"
	else
		echo "Boa Noite,já é muito tarde"
	fi
		echo "Como você vai?"
}
function criador(){
	echo -e "meu criador é $CRIADOR e seu RM é $RM"
	sleep 1 
	echo "Conhecido como Caostic"

}
function diversao(){
case $NUM in 
	*0*)
		say "NANO é melhor que VIM"
	;;
	*1*)
		echo "v0cê f01 h4ck34d0 p0r mr r0b07"
	;;
	*2*)
		printf "Qual é o grande segredo"
		sleep 3
		printf "\nVerificando."
		sleep 3
		echo -e "\nVerificando.."
		sleep 3
		echo -e  "Verificando..."
		sleep 3
		echo -e "QXF1aSBuw6NvIHBvc3N1aSBuZW5odW0gc2VncmVkbyEgVm9jw6ogZm9pIHRyb2xsYWRv"
	;;
	*3*)
		echo "Olá $USER estou analisando sua máquina"
		sleep 3
		cd /home/$USER/Desktop
		mkdir .B
		sleep 3
		cd .B
		sleep 3 
		echo "Ficou com medo né pode falar..." >.oi
		sleep 3
		echo "Algo encontrado vamos ver o que é"
		sleep 3
		echo "Vixi é sério isso? '0'"
		sleep 3
		cat .oi
		sleep 1
		rm -rf /home/$USER/Desktop/.B
	;;
esac
}
#---------------Início---------------#

inicio

#---------------Case-----------------#

case $PERGUNTA in
	"cone"*)
		conectividade
          ;;
	"namor"*)
		namorar
	  ;;
        "vulnera"*)
	      	vulnerabilidade
	  ;;
        "servi"*)      
		servicos
	  ;;
        "atualiz"*)
	        atualize
	  ;;    
        "cria"*)
	        criador 
      	  ;;
	"manha"|"manhã")
		tempo
          ;;
	"versão"|"versao")
		versao
          ;;
	"diver"*)
		diversao
	  ;;
  	"ajuda"|"help")
		ajuda
esac
