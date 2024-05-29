# Flutter Template Base
This is the base for the Flutter template with [mason](https://github.com/felangel/mason). You can start to make a template with this. 

# Platforms
The mustache syntax `{{application_id}}` is implemented across 6 platforms. Only Android has been tested. If any errors occur or if it works fine on other platforms, please raise an issue and let me know.
1. Android ✅ - 24.04.26
2. IOS ❓ - Not tested yet
3. Web ❓ - Not tested yet
4. Linux ❓ - Not tested yet
5. MacOS ❓ - Not tested yet
6. Windows ❓ - Not tested yet

# Prompts
There're 4 prompts for the brick.
1. `project_name` : Project name. 
2. `org_name` : Organization name like `com.example`. 
3. `application_id` : App id after the organization name. Used on multiple platforms with `org_name`.
4. `description` : Project description.

# How to Make & Use Template
1. Install Mason CLI ( If it's not installed )
   ```
   dart pub global activate mason_cli
   ```
2. Git clone the repository
   ```
   git clone https://github.com/jhj0517/flutter_template_base.git
   ```
3. Implement your own template in the `__brick__/{{project_name.snakeCase()}}/lib`.
4. Add the template as the global brick. (you can change the brick name in [`brick.yaml`](https://github.com/jhj0517/flutter_template_base/blob/master/brick.yaml) as you want. )
   ```
   mason add -g flutter_template_base --path ./
   ```
5. Check that the brick is added correctly.
    ```
    mason ls -g
    ├── flutter_template_base 0.1.0  // it prints something like this
    ```
6. You can now start a new project with your own template
   ```
   mason make flutter_template_base
   ```
