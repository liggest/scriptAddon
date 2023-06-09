# Script Addon

> Currently working in progress

An addon of [VSCode's lua extension][LuaExtension]

Attempt to add [annotations][Annotation] for [card scripts in ygopro](https://github.com/Fluorohydride/ygopro-scripts) by using a revised version of [_functions.txt](https://github.com/liggest/scriptAddon/blob/main/script/_functions.txt) originated from [DataEditorX](https://code.mycard.moe/nanahira/DataEditorX/-/blob/master/DataEditorX/data/_functions.txt)

## Usage

- Install [the lua extension][LuaExtension]
- Edit settings of the extension in script project folder (workspace)

    Example `.vscode/settings.json`

    ```JSON
    {
        "Lua.workspace.userThirdParty": [
            "path/to/parent directory of scriptAddon"
        ],
        "Lua.workspace.library": [
            "path/to/scriptAddon/library"
        ]
    }
    ```
- Add little annotations for cards

    Example `definition.lua` (or any preferable names)

    ```lua
    ---@meta

    ---@type Card
    cXXXXXXXXX = {}
    ```
    Example `cXXXXXXXXX.lua`

    ```lua
    ---@param c Card
    ---@return boolean
    function cXXXXXXXXX.filter(c) ... end
    ```

## Annotating

For raw annotation generation

```bash
python script/annotations_gen.py
```

This script will generate `library/*.gen.lua`

Further revise is generally needed. Please refer to [the document of annotations][Annotation]

Put revised annotations for classes in `library/class_name.lua`, and run `script/annotations_gen.py` again


[Annotation]: https://github.com/LuaLS/lua-language-server/wiki/Annotations/
[LuaExtension]: https://marketplace.visualstudio.com/items?itemName=sumneko.lua
