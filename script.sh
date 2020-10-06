#!/bin/bash
########################################################################################
#Autor: Emerson																		   #
#Titulo: Script de automação para instalação com terraform					           #	
#Data: 07/12/2019																	   #			
#																					   #	
########################################################################################
clear
echo 
echo ========================="Instalando dependencias..."==================================================
echo
 sudo yum install epel-release -y && sudo yum install ansible -y &&  sudo yum install git -y &&  sudo yum install unzip -y
echo
echo =========================="Fazendo as configurações necessárias..."====================================
echo
 cd /tmp
 git clone https://github.com/Emerson89/zabbix-server.git
 cd zabbix-server
echo
echo =========================="Executando receita ansible..."=============================================
echo
sudo ansible-playbook -i hosts -c local zabbix.yml                                                                                                                         
                                                                                                                                             
                                     
