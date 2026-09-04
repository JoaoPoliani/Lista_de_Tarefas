# Lista de Tarefas

Aplicativo simples de **lista de tarefas** desenvolvido com **Flutter e Dart**.

O projeto foi criado com o objetivo de praticar os principais conceitos de desenvolvimento de interfaces e gerenciamento de estado no Flutter.

## Funcionalidades

Atualmente, o aplicativo permite:

* Adicionar novas tarefas
* Marcar tarefas como concluídas
* Excluir tarefas
* Visualizar todas as tarefas cadastradas
* Identificar visualmente tarefas concluídas

## Tecnologias utilizadas

* **Flutter**
* **Dart**
* **Material Design**

## Como funciona

Na tela principal, o usuário encontra um campo para digitar uma tarefa.

Depois de escrever, basta clicar no botão **+** para adicioná-la à lista.

Cada tarefa possui:

* Um **checkbox** para marcar como concluída.
* O nome da tarefa.
* Um botão de **lixeira** para removê-la.

Quando uma tarefa é concluída, seu texto recebe um efeito de risco para indicar que ela foi finalizada.

## Estrutura atual

O projeto utiliza uma estrutura simples para facilitar o aprendizado:

```text
lib/
└── main.dart
```

Todo o código da aplicação está atualmente concentrado no arquivo `main.dart`.

## Como executar o projeto

### Pré-requisitos

É necessário ter instalado:

* Flutter
* Dart
* Android Studio ou VS Code
* Um dispositivo Android, emulador ou navegador compatível

### Clonar o projeto

```bash
git clone https://github.com/JoaoPoliani/lista-tarefas.git
```

Entre na pasta:

```bash
cd lista-tarefas
```

### Instalar as dependências

```bash
flutter pub get
```

### Executar

Para executar no dispositivo ou emulador:

```bash
flutter run
```

Para executar no Google Chrome:

```bash
flutter run -d chrome
```

## Objetivo do projeto

Este projeto faz parte do processo de aprendizado de **Flutter e Dart**, colocando em prática conceitos como:

* `StatelessWidget`
* `StatefulWidget`
* `setState()`
* `List`
* `ListView.builder`
* `TextField`
* `TextEditingController`
* `Checkbox`
* `IconButton`
* `Scaffold`
* `MaterialApp`
* Organização básica de uma aplicação Flutter

## Próximas melhorias

Algumas funcionalidades que podem ser adicionadas futuramente:

* Salvar tarefas no dispositivo
* Editar tarefas
* Pesquisar tarefas
* Filtrar tarefas concluídas e pendentes
* Adicionar datas
* Adicionar prioridades
* Criar categorias
* Adicionar modo escuro

## Autor

**João Vitor Poliani**

Projeto desenvolvido para fins de estudo e prática em desenvolvimento de aplicações com Flutter e Dart.
