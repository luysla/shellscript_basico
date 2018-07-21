#!/bin/bash


###################################
#                                 #
#   APRENDENDO COMANDOS BÁSICOS   #
#		  DO SHELLSCRIPT       	  #
#  		                          #
#  Created by: Luysla Dyana       #
#                                 #
###################################                           


var=helloworld

echo "Substituição:" ${var/world/WORLD} - "Numero de caracteres:"${#var}, "Retirar caracteres do início:" ${var#hello}, "Retirar caracteres do final:" ${var%world}

#Execução de comandos

#echo "Criar arquivos 1 e 2"; touch arquivo1 arquivo2 ; ls arquivo*

#Filtrar nomes de arquivos com o grep
ls | grep arquivo

#Executando um segundo comando caso o primeiro seja executado 
#ping -c 10 google.com && echo "Conectado!"

#Executando um segundo comando caso o primeiro não seja executado
cat naoexiste.txt || echo "ERRO!" 

#Here documents
#cat << fim
#    Argumento: $1
#    Argumento: $2
#    Argumento: $3
#fim

#Operadores aritméticos
num1=10
num2=20
echo "Soma:" soma=`expr $num1 + $num2`, "Subtração:"`expr $num1 - $num2`, "Multiplicação:"`expr $num1 \* $num2`, "Divisão:"`expr $num1 / $num2`, "Módulo:" `expr $num1 % $num2`  



