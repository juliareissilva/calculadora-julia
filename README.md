# calculadora-julia

Calculadora simples que realiza soma, subtração, multiplicação e divisão entre dois números, com tratamento para divisão por zero e opção de repetir a operação. Projeto desenvolvido em Python e adaptado para Shell Script (Bash) durante o curso de Análise de Dados.

## Arquivos

- `pratique1.py` — versão do código em Python
- `calculadora.sh` — versão do código em Shell Script (Bash)
- `comandos.txt` — comandos utilizados para configurar e executar o script

## Como executar o arquivo .sh

1. Abra o terminal na pasta onde está o arquivo `calculadora.sh`.
2. Dê permissão de dono ao arquivo (se necessário):
   sudo chown seu_usuario:seu_usuario calculadora.sh
4. Dê permissão de execução ao arquivo:
   chmod 744 calculadora.sh
4. Execute o script:
   ./calculadora.sh
5. Siga as instruções exibidas no terminal: digite os dois números, escolha a operação desejada (1 a 4) e, ao final, informe se deseja repetir a operação (Sim ou Não).

## Explicação do código em Python

O código em Python (`pratique1.py`) funciona da seguinte forma:

- Um laço `while` mantém a calculadora rodando enquanto a variável `continuar` for igual a "Sim".
- O programa solicita dois números ao usuário (`num1` e `num2`), convertidos para número decimal com `float()`.
- Em seguida, exibe um menu com as 4 operações disponíveis (soma, subtração, multiplicação e divisão).
- Uma estrutura `if / elif / else` verifica qual operação foi escolhida e calcula o resultado correspondente.
- Na divisão, há uma verificação para impedir divisão por zero, exibindo uma mensagem de erro caso `num2` seja igual a 0.
- Ao final de cada operação, o programa pergunta se o usuário deseja continuar; se a resposta não for "Sim", o laço é encerrado e a mensagem de despedida é exibida.
