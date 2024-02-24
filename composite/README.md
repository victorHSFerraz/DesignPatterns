# Padrão de Projeto Composite

## Visão Geral
O Composite é um padrão de projeto estrutural usado para tratar objetos individuais e composições de objetos de maneira uniforme. Ele permite que clientes tratem de objetos individuais e composições de objetos da mesma maneira, simplificando a estrutura do cliente ao tratar ambos como componentes de uma árvore de objetos.

## Benefícios
- **Transparência:** Clientes usam composições e objetos individuais da mesma maneira, o que simplifica o código do cliente.
- **Flexibilidade:** Facilita a construção de estruturas de objetos complexas, como árvores, onde os elementos podem ser compostos e manipulados como um único objeto.
- **Simplicidade:** Reduz a complexidade do código ao tratar objetos simples e compostos de forma uniforme.

## Como Usar
1. Defina uma interface comum para objetos individuais e para suas composições.
2. Crie classes concretas que representem os objetos individuais e as composições de objetos.
3. Use a composição para criar estruturas de árvore de objetos, onde tanto os objetos individuais quanto as composições são tratados da mesma forma.

## Exemplo Prático
Imagine um sistema gráfico em que você tem tanto formas individuais (como círculos e quadrados) quanto grupos de formas. Com o padrão Composite, você pode tratar uma forma individual da mesma maneira que um grupo de formas. Por exemplo, você pode aplicar operações como `mover` ou `desenhar` tanto a uma forma individual quanto a um grupo de formas, permitindo que você componha e manipule complexas estruturas gráficas de forma unificada e simplificada.
