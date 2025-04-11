# Máquinas de Estado Finito (MEF) em VHDL

Este repositório contém dois projetos de Máquinas de Estado Finito (MEF) implementados em VHDL:

1. **Controlador de Elevador**
2. **Máquina de Refrigerantes**

Ambos os projetos demonstram a aplicação prática de MEFs em sistemas digitais, com entradas, saídas e comportamentos específicos conforme descrito abaixo.

## 1. Controlador de Elevador

### Funcionalidades
- Controle inteligente do movimento do elevador (subir, descer ou permanecer parado)
- Interface com:
  - Chaves para seleção do andar desejado
  - Clock e reset conforme especificado
- Saídas visuais:
  - Display de 7 segmentos para mostrar o andar atual e o andar destino
  - LEDs indicadores de estado (subindo, descendo ou parado)

### Especificações Técnicas
- **Andares**: 16 (0 a 15)
- **Lógica de movimento**:
  - 1 andar por pulso de clock
  - Resposta imediata a chamadas
  - Prevenção de chamadas múltiplas simultâneas
- **Entradas**:
  - Clock na chave mais significativa
  - Master reset na chave menos significativa
  - Combinação de chaves para seleção de andar
- **Saídas**:
  - Dois displays de 7 segmentos (decimal) para:
    - Andar atual
    - Andar destino
  - LEDs para estado do elevador:
    - Subindo
    - Descendo
    - Parado

## 2. Máquina de Refrigerantes

### Funcionalidades
- Controle de uma máquina de venda de refrigerantes
- Aceitação de moedas (R$1,00; R$0,50; R$0,25; R$0,10)
- Lógica de devolução de dinheiro e entrega do produto
- Interface com:
  - Botão para liberação do refrigerante
  - Chaves para inserção de moedas
  - Clock e reset

### Especificações Técnicas
- **Moedas aceitas**: 1 real, 50 centavos, 25 centavos e 10 centavos
- **Lógica de operação**:
  - 1 moeda por pulso de clock
  - Devolução automática se valor exceder R$1,00
  - Aceita qualquer sequência de moedas válidas
- **Entradas**:
  - Clock na chave mais significativa
  - Master reset na chave menos significativa
  - Combinação de chaves para inserção de moedas
  - Botão para solicitar refrigerante
- **Saídas**:
  - Display de 7 segmentos para mostrar valor acumulado (em centavos)
  - LEDs para estado da máquina:
    - Recebendo dinheiro
    - Devolvendo dinheiro
    - Entregando refrigerante

## Diagramas de Estado

Ambos os projetos implementam MEFs com os seguintes estados principais:

### Elevador:
1. **Parado**: Aguardando chamada
2. **Subindo**: Movimento para andares superiores
3. **Descendo**: Movimento para andares inferiores

### Máquina de Refrigerantes:
1. **Aguardando moedas**: Estado inicial
2. **Acumulando valor**: Recebendo moedas
3. **Devolvendo dinheiro**: Quando valor excede R$1,00
4. **Liberando produto**: Quando valor exato é inserido e botão pressionado
