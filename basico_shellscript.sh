#!/bin/bash

###################################
#                                 #
#   APRENDENDO COMANDOS BÁSICOS   #
#		  DO SHELL SCRIPT         #
#  		                          #
#  Created by: Luysla Dyana       #
#                                 #
###################################                           

#MANIPULANDO STRING
var=helloworld

echo "Substituição:" ${var/world/WORLD} #Substituindo letras minúsculas por maiuscúlas  
echo "Número de caracteres na variável:" ${#var}
echo "Retirar caracteres do início:" ${var#hello}
echo "Retirar caracteres do final:" ${var%world}

#EXECUÇÃO DE COMANDOS - UM APÓS O OUTRO
echo "Irei executar um comando de listar após esse print" ; ls

#FILTRAR ARQUIVOS
ls | grep basico*

#EXECUTANDO UM SEGUNDO COMANDO, CASO O PRIMEIRO FUNCIONE
ping -c 5 google.com && echo "Conectado!"

#EXECUTANDO UM SEGUNDO COMANDO, CASO O PRIMEIRO NÃO FUNCIONE
cat naoexiste.txt || echo "Erro! Arquivo não encontrado" 

#HERE DOCUMENTS
cat << fim
    Argumento: $1
    Argumento: $2
fim

#OPERADORES ARITMÉTICOS
num1=10
num2=20

echo "Soma:" `expr $num1 + $num2`
echo "Subtração:"`expr $num1 - $num2`
echo "Multiplicação:"`expr $num1 \* $num2`
echo "Divisão:"`expr $num1 / $num2`
echo "Módulo:" `expr $num1 % $num2`  

#OPERADORES DE COMPARAÇÃO 

# Igual?: num1 -eq num2 
# Diferente?: num1 -ne num2
# Menor que...: num1 -lt num2
# Maior que...: num1 -gt num2
# Menor ou igual?: num1 -lt num2
# Maior ou igual?: num1 -ge num2

#OPERADORES LÓGICOS
# Not: !num1
# E:   num1 && num2 
# Ou:  num1 || num2

#ESTRUTURAS CONDICIONAIS
# IF...ELIF...ELSE
poupanca=100
idade=21

if [ $poupanca -lt 100 ]
then
	echo "Legal! Tem 100 reais na sua poupança"
elif [[ $poupanca -eq 100 && $idade>20 ]] 
then
	echo "Legal! Você é um(a) jovem de sorte!"
else
	echo "Ops! Menos de 100 reais na sua poupança"
fi

#CASE
dia_da_semana=3

case $dia_da_semana in 
	1)
		echo "Segunda-feira"
		;;
	2)	
		echo "Terça-feira"
		;;
	3)
		echo "Quarta-feira"
		;;
	4)
		echo "Quinta-feira"
		;;
	5)
		echo "Sexta-feira"
		;;
	6)
		echo "Sábado"
		;;
	7)
		echo "Domingo"
		;;
	*)
		echo "Nenhum dia da semana correspondente!"
		;;
esac
	