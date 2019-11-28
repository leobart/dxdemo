# Demo DX Project


TODO: Description of the project, its structure, purpose, etc.

## Install in your local PC first:
1) [Git](https://git-scm.com/)
2) [Salesfroce DX CLI](https://developer.salesforce.com/tools/sfdxcli)
3) [Websorm + Illuminated Cloud](https://www.jetbrains.com/webstorm/) or [Intellij + Illuminated Cloud](https://www.jetbrains.com/idea/download/#section=windows)
4) [Fork](https://git-fork.com/)

## IntelliJ + Illuminated cloud Setup:
1) File > New > Project From version Control > Git
2) Enter URL: https://github.com/leobart/dxdemo.git
3) Authenticate and clone


## Webstorm + Illuminated cloud Setup:
1) VCS > Checkout from Version Control > Git
2) Enter URL: https://github.com/leobart/dxdemo.git
3) Authenticate and clone



## Scratch Org Setup (Open command line or terminal in your IDE):

1) Create developer account, login to your developer account, go to setup > Dev Hub > and Dev Hub on

   ```sh
    sfdx force:auth:web:login -d -a devHubAlias
   ```

2) Create scratch org:

    ```sh
    sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -a DXDemo
    ```

3) Push project to Scratch org

    ```sh
    sfdx force:source:push
    ```

4) After Scratch org successfully created click 'Resolve' in the Webstorm/IntelliJ Event Log and select in 'Connection' column created Scratch Org

5) Open org for work with:

    ```sh
    sfdx force:org:open
    ```

6) Pull changes from Scratch Org to project:

    ```sh
    sfdx force:source:pull
    ```
