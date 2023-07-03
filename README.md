
# Clean Arch Project

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)

Código fonte do aplicativo Dentre algumas das funcionalidades disponíveis, estão:
- Visualização dos pokemons em lista com nome e foto na Home
- Tela de detalhes do respectivo pokemon selecionado na Home com id, habilidades, tipo, altura e peso
- Navegação entre as telas para voltar e escolher novos pokemons

## Detalhes técnicos do projeto
- Desenvolvido em [Dart e Flutter](https://flutter.dev/)
- Utiliza [CLEAN Arquitecture](docs/adr/0001-clean-architecture.md) para organização do código.
- Injeção de dependências e gerencimento de rotas com [Flutter Modular](https://pub.dev/packages/flutter_modular)
- Gerenciamento de estado com [Mobx](https://pub.dev/packages/mobx)
- Conexão HTTP com [Dio](https://pub.dev/packages/dio)
- Captura de imagens utilizando o image network do flutter

## Configuração do ambiente
A **Dart VM** e o **Flutter SDK** precisam estar devidamente instalados, de preferência em sua versão *stable*. Utilize o comando `flutter doctor` para verificar se o ambiente Flutter está devidamente configurado.

Após isso, o comando `flutter pub get` faz a instalação das dependências no projeto e `flutter run` inicia a execução em um dispositivo. Mas antes de rodar o projeto, é necessario conferir as configuraçoes de ambiente seguintes.

## Desenvolvimento e Função
O aplicativo foi desenvolvido para teste e aplicação de vaga para Desenvolvedor Flutter.Jr. o aplicativo consiste em consumir a API externa de gatos (https://thecatapi.com/) e fazer uma listagem dos pokemons mostrando seu nome e sua imagem em uma HomeScreen e também ter a opção de clicar em cada pokemon desejável e apresentar uma tela de detalhes com nome, foto, origem, tipos e descrição.

## Descrição dos requisitos
    Tela Inicial: 
    - Exiba uma lista de gatos, mostrando o nome, imagem e breve resumo de cada um.
    - Ao tocar em um gato da lista, o aplicativo deve navegar para a tela de detalhes do gato.

    Tela de detalhes do gato:
    - Exiba informações detalhadas sobre o gato selecionando, como nome, origem, foto e descrição.
    - Inclua também a imagem do gato em tamanho maior.
    - Forneça um botão ou ícone para voltar à tela inicial.
