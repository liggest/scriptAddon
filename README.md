# YGO 脚本附加项（Script Addon）

> 有待完善

一个 [VSCode lua 扩展][LuaExtension] 的 [附加项（addon）][Addons]

试图为 [YGO 卡片脚本][scripts] 增加 [类型标注（annotations）][Annotation]

所用数据来自 [DataEditorX][functions_origin] 的 [`_functions.txt`][functions]，略作修改

## 如何使用

- 安装 [lua 扩展][LuaExtension]
- 编辑项目目录（工作区）下的扩展设置

    例：`.vscode/settings.json`

    ```JSON
    {
        "Lua.workspace.userThirdParty": [
            "路径/直到/scriptAddon的父目录"
        ],
        "Lua.workspace.library": [
            "路径/直到/scriptAddon/library"
        ]
    }
    ```
- 为卡片标注少许

    例：`definition.lua` （或者任何喜欢的名字）

    ```lua
    ---@meta

    ---@type Card
    cXXXXXXXXX = {}
    ```
    例：`cXXXXXXXXX.lua`

    ```lua
    ---@param c Card
    ---@return boolean
    function cXXXXXXXXX.filter(c) ... end
    ```

## 标注

生成原始标注

```bash
python script/annotations_gen.py
```

会生成 `library/*.gen.lua`

若需要进一步改进标注，请参考 [标注文档][Annotation]

在 `library/类名.lua` 中为某个类添加改进后的标注，之后再次执行 `script/annotations_gen.py`

------

# Script Addon

> Currently working in progress

An [addon][Addons] of [VSCode's lua extension][LuaExtension]

Attempt to add [annotations][Annotation] for [card scripts in ygopro][scripts] by using a revised version of [`_functions.txt`][functions] originated from [DataEditorX][functions_origin]

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

[Addons]: https://luals.github.io/wiki/addons/
[Annotation]: https://luals.github.io/wiki/annotations/
[LuaExtension]: https://marketplace.visualstudio.com/items?itemName=sumneko.lua
[scripts]: https://github.com/Fluorohydride/ygopro-scripts
[functions]: https://github.com/liggest/scriptAddon/blob/main/script/_functions.txt
[functions_origin]: https://code.mycard.moe/nanahira/DataEditorX/-/blob/master/DataEditorX/data/_functions.txt
