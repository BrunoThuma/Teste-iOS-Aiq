# Desafio AiqFome
Teste tecnico para vaga de desenvolvedor iOS Pleno do AiqFome.

---

## Table of Contents
- [Objetivo](#Objetivo)
- [Regras](#Regras)
- [Arquitetura](#Arquitetura)
- [Contribuição](#Contribuição)
- [Andamento](#Andamento)
- [Aprendizados](#Aprendizados)

## Objetivo
Implementar uma aplicação para iOS com a tela de montagem de item de pedido utilizando como base o material passado no [link do figma](https://www.figma.com/file/mgLRWavLkkZnDTVKOKQPie/%5Baiqfome%5D-teste-front-end---MOBILE?type=design&node-id=1182-2552&mode=design&t=hLpbk0QAIZfqprC4-0)

## Regras
- Seguir as orientações do Figma
- Utilizar ViewCode para implementação da UI
- Postar em repo público

## Arquitetura
É utilizada a arquitetura MVVM-C para essa aplicação. 

Apesar de haver inicialmente apenas uma tela, caso mais telas venham a ser implementadas, um Coordinator realizará sua navegação

## Contribuição
Tentarei seguir um padrão de gitflow para a contribuição de codigo, de modo que a branch main possuirá apenas entregas completas e estáveis de código, mesmo que em versão inicial.

A branch `dev` será utilizada como intermediaria entre as branches de implementação e a main para garantir que merge commits não fiquem aparentes na main.

Branches `fix/` e `feat/` são criadas a parti da `dev` para que alterações sejam realizadas.

Quando um PR é mergeado da `dev` na `main` uma nova tag de versão será gerada.

Para mais informações consultar o [manual oficial do gitflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow#:~:text=What%20is%20Gitflow%3F,lived%20branches%20and%20larger%20commits.).

## Andamento
- [x] Divisão das pastas para MVVM
- [x] Definição do modelo de dados
- [ ] Contrução basica da tela
  - [x] TableView diferenciando cada tipo de campo
  - [ ] Header com Endereço de destino, 
  - [x] Sumário com imagem e infos do item
  - [x] View com total e quantidade
  - [ ] Footer com TextField para observações e botão de finalizar
- [ ] Contrução da celula de cada tipo de campo 
  - [ ] Seleção unica
  - [ ] Seleção multipla
  - [ ] Multiplas unidades
- [ ] Importar assets
  - [x] Imagem item cardapio
  - [x] Fontes
  - [ ] Icones (AiqFome, Perfil, GeoPin, Dolar, Lixeira)
  - [x] Cores
- [ ] Criar interações para tela dinâmica
  - [ ] Alterar valor do total do pedido
  - [ ] Habilitar adicionar pedido repetido
  - [ ] Habilitar botão "ver ticket"
  - [ ] Criar modelo das opções salvas pelo usuario (OrderItemData?)
- [ ] Melhorias
  - [ ] Criar métodos que poder levantar exceções
  - [ ] Tratar exceções
  - [ ] Padronizar nomes dos arquivos e variaveis
- [ ] Bugs
  - [ ] Constraints quebrando na `OrderItemFormView`
  - [ ] TableView do form n aparece

## Aprendizados
No MVVM a View tem o papel de cuidar de qualquer interação com o usuario, deixando para a ViewModel qualquer calculo ou recuperação de dados. Isso implica que normalmente temos uma ViewController e uma View, seja em forma de ViewCode ou Storyboard

O coordinator pode receber e injetar, atraves de seus métodos Delegate, as dependencias e dados necessarios a cada módulo. [Link ref](https://www.youtube.com/watch?v=DjPNdQBazHM&ab_channel=Swiftparatodos)

Formas mais convenientes de implementar TableViews para formulários [Link ref](https://nimblehq.co/blog/better-form-architecture-for-ios-applications)

## Ideias 
Talvez o formulário inteiro possa ser representado como uma unica lista, no caso teriamos as primeiras duas celulas sendo a imagem e os dados do formulário. Isso facilita a representação na UI, mas pode ser dificil de assimilar com a representação do modelo que a API responderia.

Implementar telas em SwiftUI. Aproveitar o baixo acoplamento com a View que o MVVM oferece e criar as telas usando SwiftUI, uma tecnologia mais recente, com alguns pontos favoraveis para a tela pedida.