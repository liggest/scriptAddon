
from pathlib import Path
# from itertools import chain
from collections import deque
from typing import Generator

HERE = Path(__file__).parent
LIBRARY = HERE.parent / "library"

class Param:

    LegalTypes = { "nil", "any", "boolean", "string", "number", "integer", "function", "table", "thread", "userdata", "lightuserdata", "...", "Card", "Group", "Effect"}

    PARAM = "---@param"
    RETURN = "---@return"

    def __init__(self, function:"LuaFunction", raw_type:str, with_name = True):
        self.function = function
        self.optional = False
        self.default = None
        self.t = ""
        self._t_union = None
        self.name = ""
        self.parse(raw_type, with_name)

    @property
    def t_union(self):
        if not self._t_union:
            self._t_union = []
        return self._t_union

    @property
    def param_annotation(self):
        name = self.name
        if self.optional:
            name = f"{name}?"
        t = self.t
        if self._t_union:
            t = " | ".join(filter(None, self._t_union))
        if name:
            if self.default: # 暂时有名字再考虑 default
                return f"{self.PARAM} {name} {t} {self.default}"
            return f"{self.PARAM} {name} {t}" 
        return f"{self.PARAM} {t}"
        
    @property
    def return_annotation(self):
        t = self.t
        if self.optional:
            if not self._t_union:
                self._t_union = [self.t, "nil"]
            elif "nil" not in self._t_union:
                self._t_union = [*self.t_union, "nil"]
        if self._t_union:
            t = " | ".join(filter(None, self._t_union)) # void 的话没有类型
        if t:
            return f"{self.RETURN} {t}"
        return ""

    def parse(self, t:str, with_name = True):
        self.t = t
        if with_name:
            t_default = self.t.split("=", maxsplit = 1)
            if len(t_default) > 1: # 假设有名字 还有默认值
                self.t, self.default = t_default
                self.t, self.default = self.t.strip(), self.default.strip()
            t_name = self.t.rsplit(maxsplit = 1) # 防止类型中用 | 引入其它空格
            if len(t_name) > 1: # 有名字（也可能有没有名字的情况，比如 ...）
                self.t, self.name = t_name
            else:  # 只有名字 / 值，特殊处理
                if self.t in self.LegalTypes and self.t != "...":
                    self.name = self.t[:1].lower() # 首字母小写 Card -> c, Effect -> e
                else:
                    self.name = self.t
                    self.t = "any"
            self.special_case()
        else:
            self.special_case()

    def special_map(self, t):
        if t == "int":
            return "integer"
        if t == "bool":
            return "boolean"
        if t == "void":
            return ""
        # if t == "...":
        #     return "any"
        
        if t not in self.LegalTypes:
            print(f">>> {self.function.name}({t} {self.name}) <<<")
        
        return t

    def special_case(self):
        name_ex = self.name.rsplit("|", maxsplit = 1) # name|nil
        if len(name_ex) > 1:
            self.name, ex_t = name_ex
            if ex_t.strip() == "nil":
                self.optional = True
            else:
                self.t = f"{self.t}|{ex_t}"

        union_t = self.t.split("|")
        if len(union_t) > 1:
            self.t_union.extend(self.special_map(one_t.strip()) for one_t in union_t)
        else:
            self.t = self.special_map(self.t)
        # return self.t

class LuaFunction:

    def __init__(self, c_annotation:str, raw:tuple[str]):
        self.raw = raw
        self.c_annotation = c_annotation.lstrip("●")
        self.name = ""
        self._params:list[Param] = None
        self._returns:list[Param] = None

    @property
    def params(self):
        if not self._params:
            self._params = []
        return self._params

    @property
    def returns(self):
        if not self._returns:
            self._returns = []
        return self._returns

    # @property
    # def description(self):
    #     return '\n'.join(f"-- {line.rstrip()}  " for line in self.raw.splitlines())

    # @property
    # def params_comment(self):
    #     return '\n'.join(self.params_comment_gen())
    
    # @property
    # def returns_comment(self):
    #     return '\n'.join(self.returns_comment_gen())

    # @property
    # def comment(self):
    #     return '\n'.join(chain(self.description_gen(), self.params_comment_gen(), self.returns_comment_gen()))

    # @property
    # def annotation(self):
    #     return '\n'.join(chain(self.description_gen(), self.params_comment_gen(), self.returns_comment_gen(), self.lua_function_gen()))

    def parse(self):
        return_str, rest = self.c_annotation.split(maxsplit = 1) 
        self.name, rest = rest.split("(", maxsplit = 1) 
        param_str = rest.rstrip(")")
        self.params.extend(self.parse_types_gen(param_str))
        self.returns.extend(self.parse_types_gen(return_str, with_name = False))

    def parse_types_gen(self, types:str, with_name = True) -> Generator[Param, None, None]:
        optionals = None
        if types.endswith("]"): # 有可选项
            types, optionals = types.rstrip("]").rsplit("[", maxsplit = 1)
        for t in types.split(","):
            t = t.strip()
            if not t:
                continue
            yield Param(self, t, with_name)
            # if with_name:
            #     t_name = t.rsplit(maxsplit = 1) # 防止类型中用 | 引入其它空格
            #     if len(t_name) > 1:
            #         t, name = t_name
            #     else:
            #         name = ""
            #     t = self.special_param(t, name)
            #     yield name, t # 有名字时，元祖
            # else:
            #     t = self.special_param(t)
            #     yield t
        if optionals: # 可选项在必须项后面
            for opt_param in self.parse_types_gen(optionals, with_name):
                opt_param.optional = True
                yield opt_param
                # if with_name:
                #     name, opt_t = opt_t
                #     if not name.endswith("?"): # 带名字的可选
                #         name = f"{name}?"
                #     yield name, opt_t
                # else:
                #     if not "nil" in opt_t:
                #         if isinstance(opt_t, tuple):
                #             opt_t = (*opt_t, "nil")  # 不带名字的可选
                #         else:
                #             opt_t = (opt_t, "nil")
                #     yield opt_t

    def description_gen(self):
        yield from (f"-- {line}  " for line in self.raw)

    def params_comment_gen(self):
        yield from (p.param_annotation for p in self.params)
            # if isinstance(p_t, tuple):
            #     p_t = " | ".join(p_t)
            # yield f"{self.PARAM} {p_name} {p_t}" if p_name else f"{self.PARAM} {p_t}"

    def returns_comment_gen(self):
        yield from filter(None, (r.return_annotation for r in self.returns))
            # if isinstance(r_t, tuple):
            #     r_t = " | ".join(r_t)
            # yield f"{self.RETURN} {r_t}"

    def lua_function_gen(self):
        params = ', '.join(p.name for p in self.params)
        yield f"function {self.name}({params}) end"

    def annotation_gen(self):
        yield from self.description_gen()
        yield from self.params_comment_gen()
        yield from self.returns_comment_gen()
        yield from self.lua_function_gen()
        yield "" # 空行

class LuaClass:
    
    META = "---@meta"
    CLASS = "---@class"

    def __init__(self, name:str):
        self.name = name.strip("=").strip()
        if self.name == "aux":
            self.name = "Auxiliary"  # 特例
        self.path = LIBRARY / f"{self.name.lower()}.gen.lua"
        self.functions:deque[LuaFunction] = deque()
        self._customed_functions:set = None  # 被手动标注过的函数

    def customed_gen(self):
        path = LIBRARY / f"{self.name.lower()}.lua"
        if not path.is_file():
            return
        with path.open(encoding = "utf-8") as f:
            for line in f:
                if line.startswith("function"):  # 函数定义
                    function_name, *_ = line.removeprefix("function ").split("(", maxsplit = 1)
                    yield function_name

    @property
    def customed_functions(self):
        if not self._customed_functions:
            self._customed_functions = {*self.customed_gen()}
        return self._customed_functions

    def head_gen(self):
        yield self.META
        yield ""  # 空行
        yield f"{self.CLASS} {self.name}"
        yield f"local {self.name} = {{}}"
        yield ""  # 空行

    def tail_gen(self):
        yield f"return {self.name}"

    def file_gen(self):
        yield from self.head_gen()
        for f in self.functions:
            f.parse()
            if f.name not in self.customed_functions: # 不重复生成已经手动标注过的函数
                yield from f.annotation_gen()
        yield from self.tail_gen()

path = HERE / "_functions.txt"

# while not path.exists():
#     path = Path(input(f"未找到 {path} \n请提供 _functions.txt 所在路径：\n"))

current_cls = None
current_annotation = None
current_raw = deque()

def add_function():
    if current_cls and current_annotation: # 有类，有函数
        current_cls.functions.append(LuaFunction(current_annotation, tuple(current_raw)))
    if current_raw:
        current_raw.clear()

def write_class():
    global current_annotation
    if current_cls and current_cls.functions: # 有类，有函数
        print("保存", current_cls.name, "……")
        with current_cls.path.open("w", encoding = "utf-8") as fw:
            fw.writelines(f"{line}\n" for line in current_cls.file_gen())
    current_annotation = None # 防止之前的函数混淆到后面的类去

with path.open(encoding="utf-8") as f:
    for line in f:
        line = line.rstrip()
        if line.startswith("#") or not line: # 注释 或 空行
            continue
        if line.startswith("==="): # 类名
            add_function()
            write_class()
            current_cls = LuaClass(line)
        elif line.startswith("●"): # 新函数
            add_function()
            current_annotation = line
        current_raw.append(line)
    add_function()
    write_class()
