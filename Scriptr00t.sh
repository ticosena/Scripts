#!/bin/bash

###################################
# Criador por Thiago Sena ({S3N4})#
# Helper Jonatas Fil  ({Ninj4})   #
###################################

cat <<!
			Created by Thiago[S3N4]

███████╗ ██████╗ █████╗ ███╗   ██╗██████╗  ██████╗  ██████╗ ████████╗
██╔════╝██╔════╝██╔══██╗████╗  ██║██╔══██╗██╔═████╗██╔═████╗╚══██╔══╝
███████╗██║     ███████║██╔██╗ ██║██████╔╝██║██╔██║██║██╔██║   ██║
╚════██║██║     ██╔══██║██║╚██╗██║██╔══██╗████╔╝██║████╔╝██║   ██║
███████║╚██████╗██║  ██║██║ ╚████║██║  ██║╚██████╔╝╚██████╔╝   ██║
╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝

#--------------------------#
# 1) - Scan Site           #
# 2) - Scan Roteador       #
# 3) - Sair                #
#--------------------------#
!
	echo -n "Qual opção Deseja:"

	read opcao;
 	case $opcao in

	"1")
	   echo -n "Url do site (ex: site.com):"
	   read uscan
	   sudo nmap $uscan
	    ;;

	"2")
	    echo -n "Informe o ip do roteador:"
	    read Local
	    sudo nmap -sP $Local/24
	   ;;


	"3")
	  echo -e "Saindo...."
	  exit
esac
