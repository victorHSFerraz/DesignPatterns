# Padrão de Projeto Bridge

## Visão Geral
O padrão Bridge é um padrão de projeto estrutural usado para separar a abstração da implementação, permitindo que ambas variem independentemente. Ele é especialmente útil em situações onde uma classe deve ser estendida em várias dimensões ortogonais (independentes), ou quando uma classe e suas implementações devem ser capazes de evoluir separadamente.

## Benefícios
- **Flexibilidade:** Separa a interface (abstração) da implementação, permitindo que ambas evoluam sem estarem fortemente acopladas.
- **Extensibilidade:** Facilita a extensão de classes em múltiplas dimensões.
- **Manutenibilidade:** Reduz o impacto das mudanças, permitindo mudar a abstração e a implementação de forma independente.

## Como Usar
1. Identifique os aspectos do seu sistema que variam independentemente e separe-os em classes abstratas e implementações.
2. Crie uma ponte (bridge) que integre estas partes. Isso geralmente envolve uma interface ou classe abstrata que atua como uma ponte entre a abstração e a implementação.
3. As classes abstratas delegam o trabalho para as implementações correspondentes.

## Exemplo Prático
Considere um aplicativo de desenho que precisa renderizar formas em diferentes sistemas operacionais. As formas (como círculos e quadrados) são abstrações, enquanto a renderização específica do sistema operacional (Windows, Linux, MacOS) são as implementações. O padrão Bridge permite mudar as implementações de renderização sem afetar as abstrações das formas.

