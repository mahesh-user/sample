#!/bin/bash

re='^-*[0-9]+([.][0-9]+)?$'
while true
do
    printf "\n\e[1;39mWhat is the temperature you wish to convert?\e[0m\n\n\t"
    read -p "Enter a numeric value  " n
    while [[ ! $n =~ $re ]]
    do 
        printf '\t\e[3;3;31mInvalid selection\n\t\e[3;3;31m\e[0m\n\t'
        read -p "Enter a numeric value " n

    done
    echo
    printf "\n\tIs this \e[1;39m(F)\e[0mahrenheit or \e[1;39m(C)\e[0melsius\e[0m?\n\n"
    while true
    do
        read -sn 1 cf
        case $cf in 
            [Ff] ) echo "$n""˚F = $(( ($n - 32) * 5 / 9 ))˚C"; break;;
            [cC] ) echo "$n""˚C = $(( $n * 9 / 5 + 32 ))˚F"; break;;
            * ) printf '\t\e[3;3;31mInvalid selection\n\e[3;3;31m\e[0m'
            printf '\tChoose \e[1;39m(F)\e[0mahrenheit or \e[1;39m(C)\e[0melsius\e[0m\n\n'
        esac
    done
    echo
    while true
    do
        printf "\tPress (1) to convert another\n\tpress (2) to quit"
        read -sn1 bye ; printf "\n\n"
        case $bye in
            [1] ) 
            break
            ;;
            [2] ) printf "Now exiting" && exit
            ;;
            * ) 
            printf '\t\e[3;3;31mInvalid selection\n\e[3;3;31m\e[0m'
            ;;
        esac
    done
done
