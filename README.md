# mason_bricks_savana


Mason CLI allows developers to create and consume reusable templates called bricks powered by the mason generator.

#Quick start 
#  Activate from https://pub.dev
`dart pub global activate mason_cli`

#  Initialize mason
`mason init`

#  Use your sample bricks provided
```git clone https://github.com/fonkamloic/mason_bricks_savana.git
    cd mason_bricks_savana/
    mason get

    or 

    mason add --path bricks/savana_app savana_app
    mason add --path bricks/savana_plugin savana_plugin
    mason add --path bricks/feature_brick feature_brick
 ```

# list all locally installed bricks
`mason list`

# To create sample app from savana_app brick 
`mason make savana_app`

# To create custom pluging from savana_plugin brick
`mason make savana_plugin`


## To avoid vscode analysis from considering bricks as error add the following to your settings.json file
```JSON
{
    “dart.analysisExcludedFolders”: [“bricks”],
    ...
}
```


