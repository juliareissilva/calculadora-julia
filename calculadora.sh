#!/bin/bash

continuar="Sim"

while [ "$continuar" == "Sim" ]; do

    read -p "Digite o primeiro número: " num1
    read -p "Digite o segundo número: " num2

    echo "Escolha a operação:"
    echo "1 - Soma"
    echo "2 - Subtração"
    echo "3 - Multiplicação"
    echo "4 - Divisão"

    read -p "Digite o número da operação desejada: " opcao

    case $opcao in
        1)
            resultado=$(echo "scale=2; $num1 + $num2" | bc)
            echo "Resultado: $num1 + $num2 = $resultado"
            ;;
        2)
            resultado=$(echo "scale=2; $num1 - $num2" | bc)
            echo "Resultado: $num1 - $num2 = $resultado"
            ;;
        3)
            resultado=$(echo "scale=2; $num1 * $num2" | bc)
            echo "Resultado: $num1 * $num2 = $resultado"
            ;;
        4)
            if [ "$num2" != "0" ]; then
                resultado=$(echo "scale=2; $num1 / $num2" | bc)
                echo "Resultado: $num1 / $num2 = $resultado"
            else
                echo "Erro: divisão por zero não é permitida."
            fi
            ;;
        *)
            echo "Opção inválida!"
            ;;
    esac

    read -p "Deseja fazer outra operação? (Sim ou Não): " continuar

done

echo "Calculadora encerrada. Até mais!"
