# Padrão de Projeto Facade

## Visão Geral
O Facade (Fachada) é um padrão de projeto estrutural que fornece uma interface simplificada para um conjunto mais complexo de classes, uma biblioteca ou um framework. Ao usar o Facade, interagimos com um sistema complicado através de uma interface mais simples e direta.

## Benefícios
- **Simplicidade:** Facilita a interação com sistemas complexos ao oferecer uma interface mais simples.
- **Desacoplamento:** Isola a complexidade do sistema, permitindo mudanças internas sem afetar os usuários.
- **Usabilidade:** Torna o código mais acessível e compreensível, especialmente para novos desenvolvedores.

## Como Usar
Inclua uma classe `Facade` em seu projeto que encapsula a complexidade das operações internas. Os usuários interagem apenas com a classe `Facade`, que gerencia as chamadas para os subsistemas mais complicados.
