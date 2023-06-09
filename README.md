# Script Addon

> Currently working in progress

An addon of [VSCode's lua extension][LuaExtension]

Attempt to add [annotations](https://github.com/LuaLS/lua-language-server/wiki/Annotations/) for [card scripts in ygopro](https://github.com/Fluorohydride/ygopro-scripts) by using a revised version of [_functions.txt](https://github.com/liggest/scriptAddon/blob/main/script/_functions.txt) originated from [DataEditorX](https://code.mycard.moe/nanahira/DataEditorX/-/blob/master/DataEditorX/data/_functions.txt)

## Usage

- Install [the lua extension][LuaExtension]
- Edit settings of the extension in your project folder (workspace)
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

## Generation

For raw annotation generation

```bash
    cd script
    python annotations_gen.py
```

Further revise is needed.

[LuaExtension]: https://marketplace.visualstudio.com/items?itemName=sumneko.lua
