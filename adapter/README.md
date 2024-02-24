# Padrão de Projeto Adapter

## Visão Geral
O padrão Adapter (Adaptador) é um padrão de projeto estrutural usado para permitir a interoperabilidade entre interfaces incompatíveis. Este padrão age como uma ponte entre duas interfaces diferentes, permitindo que sistemas com interfaces incompatíveis trabalhem juntos.

## Benefícios
- **Compatibilidade:** Permite que duas classes com interfaces diferentes trabalhem juntas.
- **Reutilização:** Facilita a reutilização de classes existentes, mesmo que suas interfaces não correspondam às necessidades atuais.
- **Flexibilidade:** Introduz flexibilidade ao permitir a substituição de classes durante o tempo de execução.

## Como Usar
Implemente uma classe `Adapter` que faz a interface entre a classe existente (adaptee) e a interface desejada. A classe `Adapter` implementa a interface desejada e traduz as chamadas de seu método para chamadas para métodos na classe existente.

## Exemplo Prático
Imagine que você tem uma aplicação que usa um sistema de log antigo e você quer integrar um novo sistema de log mais avançado. Em vez de reescrever o código existente, você pode criar um `Adapter` que permite que o novo sistema de log seja usado com a interface do sistema antigo.

