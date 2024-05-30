# Flutter Mason Templates
Personal [Mason](https://github.com/felangel/mason) templates for Flutter.  
## Architecture
![Flowcharts - Page 1](https://github.com/jhj0517/flutter_mason_templates/assets/97279763/08eb285b-446b-4a5f-aa79-ce08e1dc687d)

- Folder Structure : [Layer-first](https://github.com/bizz84/flutter-tips-and-tricks/blob/main/tips/0039-flutter-project-structure-feature-first-or-layer-first/index.md).

## Templates

| Template                | Description                                           |
|-------------------------|-------------------------------------------------------|
| [flutter_mvvm_provider](https://github.com/jhj0517/flutter_mason_templates/tree/master/flutter_mvvm_provider)   | MVVM template using [provider](https://pub.dev/packages/provider).                         |
| [flutter_mvvm_bloc](https://github.com/jhj0517/flutter_mason_templates/tree/master/flutter_mvvm_bloc)       | MVVM template using [flutter_bloc](https://pub.dev/packages/flutter_bloc).  |
| [flutter_mvvm_riverpod](https://github.com/jhj0517/flutter_mason_templates/tree/master/flutter_mvvm_riverpod)   | MVVM template using [riverpod](https://pub.dev/packages/riverpod).      |
| [flutter_empty](https://github.com/jhj0517/flutter_mason_templates/tree/master/flutter_empty)           | Empty Flutter project that includes only embedded Mustache syntax placeholders for Mason prompts across each platform. You can use this to start making your own template.              |

## How to use
1. Clone this repository
   ```
   git clone https://github.com/jhj0517/flutter_mason_templates.git
   ```
2. Install Mason CLI ( If it's not installed )
   ```
   dart pub global activate mason_cli
   ```
3. Add the bricks as global
   ```
   mason add -g flutter_mvvm_provider --path ./flutter_mvvm_provider
   mason add -g flutter_mvvm_bloc --path ./flutter_mvvm_bloc
   mason add -g flutter_mvvm_riverpod --path ./flutter_mvvm_riverpod
   mason add -g flutter_empty --path ./flutter_empty
   ```
4. Check that the brick is added correctly.
    ```
    mason ls -g
    ├── flutter_mvvm_provider 0.1.0  
    ├── flutter_mvvm_bloc 0.1.0  
    ├── flutter_mvvm_riverpod 0.1.0  
    ├── flutter_empty 0.1.0  
    ```
5. Start a new project with template anywhere
   ```
   mason make flutter_mvvm_provider
   ```
