#!/bin/bash

###################################
#                                 #
#   APRENDENDO COMANDOS BÁSICOS   #
#		  DO SHELL SCRIPT         #
#  		                          #
#  Created by: Luysla Dyana       #
#                                 #
###################################                           

#Manipulando strings
var=helloworld

echo "Substituição:" ${var/world/WORLD} #Substituindo letras minúsculas por maiuscúlas  
echo "Número de caracteres na variável:" ${#var}
echo "Retirar caracteres do início:" ${var#hello}
echo "Retirar caracteres do final:" ${var%world}

#Execução de comandos - um após o outro
echo "Irei executar um comando de listar após esse print" ; ls

#Listar e filtrar arquivos com o grep
ls | grep arquivo

#Executando um segundo comando, caso o primeiro seja executado 
ping -c 5 google.com && echo "Conectado!"

#Executando um segundo comando, caso o primeiro não seja executado
cat naoexiste.txt || echo "Erro! Arquivo não encontrado" 

#Here documents
cat << fim
    Argumento: $1
    Argumento: $2
fim

#Operadores aritméticos
num1=10
num2=20

echo "Soma:" `expr $num1 + $num2`
echo "Subtração:"`expr $num1 - $num2`
echo "Multiplicação:"`expr $num1 \* $num2`
echo "Divisão:"`expr $num1 / $num2`
echo "Módulo:" `expr $num1 % $num2`  




