#!/bin/bash
# Exibe o banner com o texto "TAISSOCOUT" em vermelho
echo -e "\033[0;31m\033[1mTAISSOCOUT\033[0m"

# Adiciona uma linha em branco após o banner
echo

while true; do
  # Solicita o endereço do host a ser escaneado
  echo "Informe o endereço do host: "
  read host

  # Limpa a tela e posiciona o cursor no meio da tela
  clear
  tput cup $(($(tput lines)/2)) $(($(tput cols)/2))

  # Adiciona uma linha piscando em amarelo
  echo -e "\033[5;33m\033[1m\033[4m Escaneamento em andamento... \033[0m"

  # Realiza o escaneamento completo do host, exibindo a versão do serviço e as portas abertas com os serviços ativos
  nmap -A $host

  # Adiciona uma linha piscando em amarelo para separar o resultado do próximo scanner
  echo -e "\033[5;33m\033[1m\033[4m _______________________________ \033[0m"
done
