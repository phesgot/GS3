# 🚀 APP GS3

![Flutter](https://img.shields.io/badge/Flutter-3.27.3-blue?style=flat&logo=flutter)  
> Teste GS3 Técnologia e Serviços, aplicação bancaria.

## 🎥 Demonstração
![Image](https://github.com/user-attachments/assets/4fb85a76-a539-47c4-8497-6640b8bb1af6)

## 📂 Tecnologias Utilizadas
- ✅ Fluter 3.27.3  
- ✅ Dart  
- ✅ MobX  

## Estrutura de Pastas

Por convenção e padronização do flutter para nomeação de pastas segue o padrão  snake_case
palavras separadas por underscores 'name_name'.

### Components
Contém widgets customizados para reutilização, reduzindo a necessidade de reescrever código.
Personalize widgets frequentemente utilizados nesta pasta.

### Models
Armazena arquivos para manipulação de dados.

### Pages
Contém os arquivos das interfaces principais do aplicativo.

### Store
Gerencia o estado do aplicativo.

### Utils
Contém arquivos de utilidades do app como métodos 

## Comandos Úteis

### Gerar APK "Gordo"
flutter build apk --release

### Gerar APKs por Arquitetura
flutter build apk --split-per-abi

### Gerar Bundle
flutter build appbundle

### Gerar arquivo
start .\build\app\outputs\bundle\release\

### iOS
flutter build ios

### Limpar Cache
flutter clean



### Upgrade Dart

#### Mac OS
brew upgrade dart

### Upgrade Flutter

#### Mac OS ou Windows
flutter upgrade

flutter pub outdated

flutter pub upgrade

#### Configurações na apple
cd ios
pod install
pod repo update


Para mais detalhes sobre versionamento no Flutter, confira este artigo:
https://medium.com/@ralphbergmann/versioning-with-flutter-299869e68af4

## MobX Generator
o que é: O MobX é uma biblioteca para gestão de estado, o que significa que podemos utilizar ele
para estados locais (páginas) ou globais (com Provider por exemplo). O MobX se baseia em
observáveis, ações e reação, um conceito que vem da programação reativa.

## Comandos Úteis

### Gera os arquivos necessários sem monitoração de alteração
flutter packages pub run build_runner build --delete-conflicting-outputs

### Gera os arquivos necessários com monitoração de alteração do código
flutter packages pub run build_runner watch --delete-conflicting-outputs

### Código caso haja algum erro ao gerar os stores, executar para limpar os arquivos e gerar novos.
flutter pub run build_runner clean
