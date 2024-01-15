#!/bin/bash

# Definindo códigos de cor ANSI
COR_PKAS="\033[38;5;220m"  # FEB63E
COR_DNS="\033[38;5;197m"  # F5055C
COR_VERDE="\033[92m"  # 00FF00
COR_ERRO="\033[38;5;196m"  # E10406
RESET="\033[0m"  # Reset para as configurações padrão de cor

# Verifica se o número correto de argumentos foi fornecido
if [ "$#" -ne 2 ]; then
   echo "------------------------------------------------------------------------------------"
   echo -e "${COR_PKAS}Pk's Academy${RESET} - ${COR_DNS}Pesquisa DNS Reversa${RESET}"
   echo "------------------------------------------------------------------------------------"
   echo "Modo de uso: $0 <primeiro IP> <ultimo IP>"
   echo "------------------------------------------------------------------------------------"
   echo "Exemplo: $0 37.59.174.224 37.59.174.239"
   echo "------------------------------------------------------------------------------------"
   exit 1
fi

primeiro_ip=$1
ultimo_ip=$2

# Divide os endereços IP em partes
IFS='.' read -r -a primeiro_ip_parts <<< "$primeiro_ip"
IFS='.' read -r -a ultimo_ip_parts <<< "$ultimo_ip"

# Verifica se os argumentos são válidos
if [ "${#primeiro_ip_parts[@]}" -ne 4 ] || [ "${#ultimo_ip_parts[@]}" -ne 4 ]; then
   echo -e "${COR_ERRO}Os endereços IP fornecidos não são válidos.${RESET}"
   exit 1
fi

# Exibe a mensagem de cabeçalho
echo "------------------------------------------------------------------------------------"
echo -e "| ${COR_PKAS}Pk's Academy${RESET} - ${COR_DNS}Pesquisa DNS Reversa${RESET} |"
echo "------------------------------------------------------------------------------------"

# Gera a lista de endereços IP entre o primeiro e o último
for ((i=${primeiro_ip_parts[3]}; i<=${ultimo_ip_parts[3]}; i++)); do
    ip="${primeiro_ip_parts[0]}.${primeiro_ip_parts[1]}.${primeiro_ip_parts[2]}.$i"
    resultado=$(host -t ptr "$ip" | grep -v "$ip" | cut -d " " -f 5)
    if [ -z "$resultado" ]; then
        echo -e "${COR_ERRO}Nenhum resultado encontrado para $ip.${RESET}"
    else
        echo -e "${COR_VERDE}$resultado${RESET}"
    fi
done
