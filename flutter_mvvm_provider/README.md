# Flutter MVVM (Provider) Template
Simple template for MVVM with in Flutter with [Provider pattern](https://docs.flutter.dev/data-and-backend/state-mgmt/simple). 
This template is integrated with [Mason](https://github.com/felangel/mason).
# Architecture
![Flowcharts - Page 1](https://github.com/jhj0517/flutter-mvvm-template-provider/assets/97279763/0bc5831c-8474-4309-8416-3289db20d0e0)

# Overview
- Notices
   1. Put important variables like API keys in the **`.env`** file.
   2. Basic retrofit & sqflite usage implemented in `home_page.dart`.
   3. Localization implemented with [Flutter Intl Plugin](https://plugins.jetbrains.com/plugin/13666-flutter-intl).
- Core Versions
```yaml
dependencies:
  cupertino_icons: ^1.0.6
  path: ^1.9.0

  # Provider Pattern
  provider: ^6.0.5

  # Local DB
  sqflite: ^2.3.3
  shared_preferences: ^2.2.3
  flutter_dotenv: ^5.1.0

  # Dependency Injection
  get_it: ^7.7.0

  # Network
  retrofit: ^4.1.0
  json_annotation: ^4.8.1
  dio: ^5.4.3+1

  # Localization
  intl: ^0.19.0    

dev_dependencies:
  # Network
  retrofit_generator: '>=7.0.0 <8.0.0'
  build_runner: '>=2.3.0 <4.0.0'
  json_serializable: ^6.6.2

flutter:
  assets:
    - assets/images/
    - .env
```

# Folder structure
[**Layer-first structure**](https://codewithandrea.com/articles/flutter-project-structure/)
```folder
lib/
├── constants/                                 (static constant values)
├── di/                                        (dependency injectors)
├── generated/                                 (generated l10n classes)
├── l10n/                                      (localization tables)
├── data
│   ├── data_source
│   │   ├── localdb/                           (SQLite components)
│   │   └── network/                           (Retrofit components)
│   ├── models/                                (data classes)
│   └── repositories/                          (repositories)
└── presentation
    ├── providers/                             (providers)
    └── views/                                 (pages including widget classes)
assets/
└── images/                                    (image asset files)
.env                                           (important variables such as API Key)
```
