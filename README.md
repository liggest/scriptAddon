# YGO 脚本附加项（Script Addon）

> 有待完善

一个 [VSCode lua 扩展][LuaExtension] 的 [附加项（addon）][Addons]

试图为 [YGO 卡片脚本][scripts] 增加 [类型标注（annotations）][Annotation]

所用数据来自 [DataEditorX][functions_origin] 的 [`_functions.txt`][functions]，略作修改

## 如何使用

- 安装 [lua 扩展][LuaExtension]
- 编辑自己项目（工作区）下的扩展设置

    例：`.vscode/settings.json`

    ```JSON
    {
        "Lua.workspace.userThirdParty": [
            "路径/直到/scriptAddon的【父目录】"
        ],
        // 如果注解未生效，手动指定其位置
        "Lua.workspace.library": [
            "路径/直到/scriptAddon/library"
        ],
        // 不想看警告的话可以用 Lua.diagnostics.disable 屏蔽一些
        "Lua.diagnostics.disable": [
            "inject-field"
        ]
    }
    ```
- 为卡片标注少许

    例：`definition.lua` （或者任何喜欢的名字）

    ```lua
    ---@meta

    ---@type CardTable
    cXXXXXXXXX = {}
    ```
    例：`cXXXXXXXXX.lua`

    ```lua
    ---@param c Card
    ---@return boolean
    function cXXXXXXXXX.filter(c) ... end
    ```

- 【可选】添加更多补全片段（Snippets）
  
    复制仓库的 [`.vscode/ygo.code-snippets`][Snippets] 到自己项目的 `.vscode` 中

    在 lua 文件中尝试对诸如 `init card`、`tg`、`op` 等的补全

## 标注

生成原始标注

```bash
python script/annotations_gen.py
```

会生成 `library/类名.gen.lua`

若需要进一步改进标注，请参考 [标注文档][Annotation]

在 `library/类名.lua` 中为某个类添加改进后的标注，之后再次执行 `script/annotations_gen.py`

------

# Script Addon

> Currently working in progress

An [addon][Addons] of [VSCode's lua extension][LuaExtension]

Attempt to add [annotations][Annotation] for [card scripts in ygopro][scripts] by using a revised version of [`_functions.txt`][functions] originated from [DataEditorX][functions_origin]

## Usage

- Install [the lua extension][LuaExtension]
- Edit settings of the extension in your script project (workspace)

    Example `.vscode/settings.json`

    ```JSON
    {
        "Lua.workspace.userThirdParty": [
            "path/to/*parent* directory of scriptAddon"
        ],
        // If the annotations does not work, manually specify its location
        "Lua.workspace.library": [
            "path/to/scriptAddon/library"
        ],
        // Add items to "Lua.diagnostics.disable" to disable some warnings
        "Lua.diagnostics.disable": [
            "inject-field"
        ]
    }
    ```
- Add little annotations for cards

    Example `definition.lua` (or any preferable names)

    ```lua
    ---@meta

    ---@type CardTable
    cXXXXXXXXX = {}
    ```
    Example `cXXXXXXXXX.lua`

    ```lua
    ---@param c Card
    ---@return boolean
    function cXXXXXXXXX.filter(c) ... end
    ```

- (Optional) Add more snippets
  
    Copy [`.vscode/ygo.code-snippets`][Snippets] into `.vscode` of your script project

    Try `init card`, `tg`, `op` in lua files

## Annotating

For raw annotation generation

```bash
python script/annotations_gen.py
```

This script will generate `library/class_name.gen.lua`

Further revise is generally needed. Please refer to [the document of annotations][Annotation]

Put revised annotations for classes in `library/class_name.lua`, and run `script/annotations_gen.py` again

[Addons]: https://luals.github.io/wiki/addons/
[Annotation]: https://luals.github.io/wiki/annotations/
[LuaExtension]: https://marketplace.visualstudio.com/items?itemName=sumneko.lua
[scripts]: https://github.com/Fluorohydride/ygopro-scripts
[functions]: https://github.com/liggest/scriptAddon/blob/main/script/_functions.txt
[functions_origin]: https://code.mycard.moe/nanahira/DataEditorX/-/blob/master/DataEditorX/data/_functions.txt
[Snippets]: https://github.com/liggest/scriptAddon/blob/main/.vscode/ygo.code-snippets
