---@meta

---@class aux
local aux = {}

-- ●int aux.Stringid(int code, int id)  
-- 用于索引卡号为code的卡片第id个（从0开始）效果提示  
---@param code integer
---@param id integer
---@return integer
function aux.Stringid(code, id) end

-- ●Card aux.Next(Group g)  
-- 卡片组 g 的迭代器，指针会先指向第一张卡，然后每次调用这函数指向下一张卡，通常用在需要对g中的卡片进行操作的时候  
-- 例如：  
-- 	local g=Group.CreateGroup()  
-- 	for tc in aux.Next(g) do  
-- 	end  
-- 等价于：  
-- 	local g=Group.CreateGroup()  
-- 	local tc=g:GetFirst()  
-- 	while tc do  
-- 		tc=g:GetNext()  
-- 	end  
---@param g Group
---@return Card
function aux.Next(g) end

-- ●void aux.BeginPuzzle()  
-- 开始残局  
-- 此函数注册3个全局效果：  
-- 回合结束时玩家的基本分变成0  
-- 跳过抽卡阶段与准备阶段  
function aux.BeginPuzzle() end

-- ●bool aux.IsDualState(Effect e)  
-- 检查二重怪兽e:GetHandler()是否是再度召唤状态（用于效果的Condition属性）  
-- 常用于二重怪兽再度召唤获得的效果e的Condition属性  
---@param e Effect
---@return boolean
function aux.IsDualState(e) end

-- ●bool aux.IsNotDualState(Effect e)  
-- aux.IsDualState的反义（用于效果的Condition属性）  
---@param e Effect
---@return boolean
function aux.IsNotDualState(e) end

-- ●bool aux.DualNormalCondition(Effect e)  
-- 检查二重怪兽e:GetHandler()是否为被视为通常怪兽的状态（用于效果的Condition属性）  
---@param e Effect
---@return boolean
function aux.DualNormalCondition(e) end

-- ●void aux.EnableDualAttribute(Card c)  
-- 为c添加二重怪兽属性  
---@param c Card
function aux.EnableDualAttribute(c) end

-- ●void aux.EnableSpiritReturn(Card c, int event1,...)  
-- 为c添加灵魂怪兽结束阶段回到手卡的效果（发生事件event1,...的回合，结束阶段回到手卡）  
---@param c Card
---@param event1 integer
---@param ... any
function aux.EnableSpiritReturn(c, event1, ...) end

-- ●bool aux.IsUnionState(Effect e)  
-- 检查同盟怪兽e:GetHandler()是否处于同盟装备的状态（用于效果的Condition属性）  
---@param e Effect
---@return boolean
function aux.IsUnionState(e) end

-- ●void aux.SetUnionState(Card c)  
-- 为c添加同盟怪兽属性  
---@param c Card
function aux.SetUnionState(c) end

-- ●bool aux.CheckUnionEquip(Card uc, Card tc)  
-- 检查同盟怪兽uc能否作为同盟装备在怪兽tc上  
---@param uc Card
---@param tc Card
---@return boolean
function aux.CheckUnionEquip(uc, tc) end

-- ●function Auxiliary.TargetEqualFunction(function f, any value, ...)  
-- 一般用在效果注册里,返回的是一个 有 bool 返回值类型的 函数，第3个参数开始为额外参数  
-- function Auxiliary.TargetEqualFunction(f,value,...)  
-- 	local ext_params={...}  
-- 	return	function(effect,target)  
-- 				return f(target,table.unpack(ext_params))==value  
-- 			end  
-- end  
---@param f function
---@param value any
---@param ... any
---@return function
function Auxiliary.TargetEqualFunction(f, value, ...) end

-- ●function Auxiliary.TargetBoolFunction(function f,...)  
-- 一般用在效果注册里,返回的是一个 有 bool 返回值类型的 函数，第2个参数开始为额外参数  
-- function Auxiliary.TargetBoolFunction(f,...)  
-- 	local ext_params={...}  
-- 	return	function(effect,target)  
-- 				return f(target,table.unpack(ext_params))  
-- 			end  
-- end  
---@param f function
---@param ... any
---@return function
function Auxiliary.TargetBoolFunction(f, ...) end

-- ●function aux.FilterEqualFunction(function f, any value, ...)  
-- 用于过滤满足单一过滤条件 f ,且值为 value 的卡,,返回的是一个 有 bool 返回值类型的 函数， 第3个参数开始为额外参数  
-- function Auxiliary.FilterEqualFunction(f,value,...)  
-- 	local ext_params={...}  
-- 	return	function(target)  
-- 				return f(target,table.unpack(ext_params))==value  
-- 			end  
-- end  
---@param f function
---@param value any
---@param ... any
---@return function
function aux.FilterEqualFunction(f, value, ...) end

-- ●function aux.FilterBoolFunction(function f, ...)  
-- 用于过滤满足单一过滤条件 f 的卡,,返回的是一个 有 bool 返回值类型的 函数，第2个参数开始为额外参数  
-- function Auxiliary.FilterBoolFunction(f,...)  
-- 	local ext_params={...}  
-- 	return	function(target)  
-- 				return f(target,table.unpack(ext_params))  
-- 			end  
-- end  
---@param f function
---@param ... any
---@return function
function aux.FilterBoolFunction(f, ...) end

-- ●function aux.Tuner(function f, ...)  
-- 用于过滤满足单一过滤条件 f 的调整，,返回的是一个 有 bool 返回值类型的 函数，只要求是 调整怪兽的话，就写 aux.Tuner(nil)  
-- 第2个参数开始为额外参数  
---@param f function
---@param ... any
---@return function
function aux.Tuner(f, ...) end

-- ●function aux.NonTuner(function f, ...)  
-- 用于过滤满足单一过滤条件 f 的调整以外的卡，,返回的是一个 有 bool 返回值类型的 函数，只要求是 调整以外的怪兽的话，就写 aux.NonTuner(nil)  
-- 第2个参数开始为额外参数  
---@param f function
---@param ... any
---@return function
function aux.NonTuner(f, ...) end

-- ●Card|Group|Effect|int|bool|string|nil|function|table|any aux.GetValueType(any value)  
-- 返回 value 在lua中的type  
---@param value any
---@return Card | Group | Effect | integer | boolean | string | nil | function | table | any
function aux.GetValueType(value) end

-- ●Group aux.GetMustMaterialGroup(int player , int code)  
-- 如果 player 受到效果种类 code 影响，则返回受到影响的卡  
-- 目前代码中涉及的code有 EFFECT_MUST_BE_SMATERIAL, EFFECT_MUST_BE_XMATERIAL, EFFECT_MUST_BE_FMATERIAL, EFFECT_MUST_BE_LMATERIAL ,都是 必须成为素材的效果  
---@param player integer
---@param code integer
---@return Group
function aux.GetMustMaterialGroup(player, code) end

-- ●bool aux.MustMaterialCheck(Card|Group value, int player , int code)  
-- 检查 value 中是否有 player 受到效果种类 code 影响的卡或者卡片组  
-- 目前代码中涉及的code有 EFFECT_MUST_BE_SMATERIAL, EFFECT_MUST_BE_XMATERIAL, EFFECT_MUST_BE_FMATERIAL, EFFECT_MUST_BE_LMATERIAL ,都是 必须成为素材的检测  
---@param value Card | Group
---@param player integer
---@param code integer
---@return boolean
function aux.MustMaterialCheck(value, player, code) end

-- ●bool aux.MustMaterialCounterFilter(Card c, Group g)  
-- 如果 g 中 包含 c ，则返回 false  
---@param c Card
---@param g Group
---@return boolean
function aux.MustMaterialCounterFilter(c, g) end

-- ●void aux.AddSynchroProcedure(Card c, function f1|nil, function f2|nil, int minc[, int maxc=99])  
-- 为c添加同调召唤手续  
-- f1为 1 只满足的过滤条件，并且必须为调整；f2为 minc [~ maxc]只满足的过滤条件  
---@param c Card
---@param f1? function
---@param f2? function
---@param minc integer
---@param maxc? integer 99
function aux.AddSynchroProcedure(c, f1, f2, minc, maxc) end

-- ●void aux.AddSynchroProcedure2(Card c, function f1, function f2)  
-- 等价于aux.AddSynchroProcedure(c,f1,f2,1,1)  
---@param c Card
---@param f1 function
---@param f2 function
function aux.AddSynchroProcedure2(c, f1, f2) end

-- ●void aux.AddSynchroMixProcedure(Card c, function f1|nil, function f2|nil, function f3|nil, function f4|nil, int minc, int maxc)  
-- 为c添加同调召唤手续，  
-- f1,f2,f3 为 1 只满足的过滤条件，f4为 minc [~ maxc]只满足的过滤条件  
-- f1,f2,f3,f4 之中，至少有一种为调整  
-- f2 和 f3 若为nil，则等价于aux.AddSynchroProcedure(c,f1,f4,minc[, maxc])  
---@param c Card
---@param f1? function
---@param f2? function
---@param f3? function
---@param f4? function
---@param minc integer
---@param maxc integer
function aux.AddSynchroMixProcedure(c, f1, f2, f3, f4, minc, maxc) end

-- ●function aux.TuneMagicianFilter(Card c, Effect e)  
-- 调弦之魔术师(73941492)专用，,返回的是一个 有 bool 返回值类型的 函数 f(e,c)  
---@param c Card
---@param e Effect
---@return function
function aux.TuneMagicianFilter(c, e) end

-- ●function aux.TuneMagicianCheckX(Card c, Group sg, Effect e)  
-- 调弦之魔术师(73941492)专用  
---@param c Card
---@param sg Group
---@param e Effect
---@return function
function aux.TuneMagicianCheckX(c, sg, e) end

-- ●void aux.AddXyzProcedure(Card c, function f|nil, int lv, int ct[, function alterf|nil, int desc|nil, int maxc=ct, function op|nil])  
-- 为c添加XYZ召唤手续  
-- 用满足条件 f 的等级为 lv 的 ct[-maxc] 只怪兽进行叠放  
-- 或者在单个怪兽（通常是XYZ怪兽）上叠放  
-- alterf 为这个怪兽满足的条件，desc为描述，op为叠放时需要的操作（比如 希望皇龙）  
---@param c Card
---@param f? function
---@param lv integer
---@param ct integer
---@param alterf? function
---@param desc? integer
---@param maxc? integer ct
---@param op? function
function aux.AddXyzProcedure(c, f, lv, ct, alterf, desc, maxc, op) end

-- ●void aux.AddXyzProcedureLevelFree(Card c, function f|nil, function gf|nil, int minc, int maxc[, function alterf|nil, int desc|nil, function op|nil])  
-- 为c添加XYZ召唤手续  
-- 用满足条件 f 的卡片组里，满足 gf 的 minc[-maxc] 只怪兽进行叠放，f 为必要条件，gf 为额外条件  
-- 或者在单个怪兽（通常是XYZ怪兽）上叠放  
-- alterf为这个怪兽满足的条件，desc为描述，op为叠放时需要的操作（比如 闪光No.0 希望之异热同心）  
---@param c Card
---@param f? function
---@param gf? function
---@param minc integer
---@param maxc integer
---@param alterf? function
---@param desc? integer
---@param op? function
function aux.AddXyzProcedureLevelFree(c, f, gf, minc, maxc, alterf, desc, op) end

-- ●void aux.AddFusionProcMix(Card c, bool sub, bool insf, ...)  
-- 为c 添加融合召唤手续  
-- 用额外参数里的卡各1张为融合素材,额外参数的类型 可以是 function 或者 卡密(int code),传入 code 相当于传入 function(code) return c:IsFusionCode(code) end  
-- sub表示能否使用融合代替素材，insf 为false表示必须用素材融合召唤。若这只怪兽融合召唤只能使用上述的卡进行，sub 和 insf 都要填 false  
---@param c Card
---@param sub boolean
---@param insf boolean
---@param ... any
function aux.AddFusionProcMix(c, sub, insf, ...) end

-- ●void aux.AddFusionProcMixRep(Card c, bool sub, bool insf, function|int code1, int minc, int maxc, ...)  
-- 为c 添加融合召唤手续  
-- 用满足f1 的怪兽 minc-maxc 只，和 额外参数里 各1只的怪兽为融合素材,  
-- 额外参数的类型 可以是 function 或者 卡密(int code),传入 code 相当于传入 function(code) return c:IsFusionCode(code) end  
---@param c Card
---@param sub boolean
---@param insf boolean
---@param code1 function | integer
---@param minc integer
---@param maxc integer
---@param ... any
function aux.AddFusionProcMixRep(c, sub, insf, code1, minc, maxc, ...) end

-- ●void aux.AddFusionProcCode2(Card c, int code1, int code2, bool sub, bool insf)  
-- 为c 添加融合召唤手续  
-- 用卡号为code1和code2的2只怪兽为融合素材  
-- 等价于 aux.AddFusionProcMix(c,sub,insf,code1,code2)  
---@param c Card
---@param code1 integer
---@param code2 integer
---@param sub boolean
---@param insf boolean
function aux.AddFusionProcCode2(c, code1, code2, sub, insf) end

-- ●void aux.AddFusionProcCode3(Card c, int code1, int code2, int code3, bool sub, bool insf)  
-- 为c 添加融合召唤手续  
-- 用卡号为code1,code2,code3的3只怪兽为融合素材  
-- 等价于 aux.AddFusionProcMix(c,sub,insf,code1,code2,code3)  
---@param c Card
---@param code1 integer
---@param code2 integer
---@param code3 integer
---@param sub boolean
---@param insf boolean
function aux.AddFusionProcCode3(c, code1, code2, code3, sub, insf) end

-- ●void aux.AddFusionProcCode4(Card c, int code1, int code2, int code3, int code4, bool sub, bool insf)  
-- 为c 添加融合召唤手续  
-- 用卡号为code1,code2,code3,code4的4只怪兽为融合素材  
-- 等价于 aux.AddFusionProcMix(c,sub,insf,code1,code2,code4)  
---@param c Card
---@param code1 integer
---@param code2 integer
---@param code3 integer
---@param code4 integer
---@param sub boolean
---@param insf boolean
function aux.AddFusionProcCode4(c, code1, code2, code3, code4, sub, insf) end

-- ●void aux.AddFusionProcCodeRep(Card c, int code, int cc, bool sub, bool insf)  
-- 为c 添加融合召唤手续  
-- 用 cc 个相同的怪兽为融合素材，code为卡号  
-- 等价于 aux.AddFusionProcMix(c,sub,insf,table.unpack(tcode)) ,tcode 是包含 cc 个 code 的表  
---@param c Card
---@param code integer
---@param cc integer
---@param sub boolean
---@param insf boolean
function aux.AddFusionProcCodeRep(c, code, cc, sub, insf) end

-- ●void aux.AddFusionProcCodeRep2(Card c, int code, int minc, int maxc, bool sub, bool insf)  
-- 为c 添加融合召唤手续  
-- 用 minc-maxc 个相同的怪兽为融合素材，code为卡号  
-- 等价于 aux.AddFusionProcMixRep(c,sub,insf,code1,minc,maxc)  
---@param c Card
---@param code integer
---@param minc integer
---@param maxc integer
---@param sub boolean
---@param insf boolean
function aux.AddFusionProcCodeRep2(c, code, minc, maxc, sub, insf) end

-- ●void aux.AddFusionProcCodeFun(Card c, int code, function f, int cc, bool sub, bool insf)  
-- 为c 添加融合召唤手续  
-- 用卡号号为 code 的1只怪兽，和 cc 个满足条件f 的怪兽为融合素材  
-- 等价于 aux.AddFusionProcMix(c,sub,insf,code1,table.unpack(fun)),fun 是包含 cc 个 满足条件 f 的卡的表  
---@param c Card
---@param code integer
---@param f function
---@param cc integer
---@param sub boolean
---@param insf boolean
function aux.AddFusionProcCodeFun(c, code, f, cc, sub, insf) end

-- ●void aux.AddFusionProcFun2(Card c, function f1, function f2, bool insf)  
-- 为c 添加融合召唤手续  
-- 用满足条件 f1 与 f2 的怪兽 各1只为融合素材  
-- 等价于 aux.AddFusionProcMix(c,false,insf,f1,f2)  
---@param c Card
---@param f1 function
---@param f2 function
---@param insf boolean
function aux.AddFusionProcFun2(c, f1, f2, insf) end

-- ●void aux.AddFusionProcFunRep(Card c, function f, int cc, bool insf)  
-- 为c 添加融合召唤手续  
-- 用 cc 个 满足相同条件 f 的怪兽为融合素材  
-- 等价于 aux.AddFusionProcMix(c,false,insf,table.unpack(fun)),fun 是包含 cc 个 满足条件 f 的卡的表  
---@param c Card
---@param f function
---@param cc integer
---@param insf boolean
function aux.AddFusionProcFunRep(c, f, cc, insf) end

-- ●void aux.AddFusionProcFunRep2(Card c, function f, int minc, int maxc, bool insf)  
-- 为c 添加融合召唤手续  
-- 用 minc-maxc 个 满足相同条件 f 的怪兽为融合素材  
-- 等价于 aux.AddFusionProcMixRep(c,false,insf,f,minc,maxc)  
---@param c Card
---@param f function
---@param minc integer
---@param maxc integer
---@param insf boolean
function aux.AddFusionProcFunRep2(c, f, minc, maxc, insf) end

-- ●void aux.AddFusionProcFunFun(Card c, function f1, function f2, int cc, bool sub, bool insf)  
-- 为c 添加融合召唤手续  
-- 用满足过滤条件 f1 的1只怪兽 ，和满足过滤条件 f2 的 cc 只怪兽为融合素材  
-- 等价于 aux.AddFusionProcMix(c,false,insf,f1,table.unpack(fun)),fun 是包含 cc 个 满足条件 f2 的卡的表  
---@param c Card
---@param f1 function
---@param f2 function
---@param cc integer
---@param sub boolean
---@param insf boolean
function aux.AddFusionProcFunFun(c, f1, f2, cc, sub, insf) end

-- ●void aux.AddFusionProcFunFunRep(Card c, function f1, function f2, int minc, int maxc, bool sub, bool insf)  
-- 为c 添加融合召唤手续  
-- 用满足过滤条件 f1 的1只怪兽 ，和满足过滤条件 f2 的 minc-maxc 只怪兽为融合素材  
-- 等价于 aux.AddFusionProcMixRep(c,false,insf,f2,minc,maxc,f1)  
---@param c Card
---@param f1 function
---@param f2 function
---@param minc integer
---@param maxc integer
---@param sub boolean
---@param insf boolean
function aux.AddFusionProcFunFunRep(c, f1, f2, minc, maxc, sub, insf) end

-- ●void aux.AddFusionProcCodeFunRep(Card c, int code, function f, int minc, int maxc, bool sub, bool insf)  
-- 为c 添加融合召唤手续  
-- 用卡号为 code 的1只怪兽 ，和满足过滤条件 f 的 minc-maxc 只怪兽为融合素材  
-- 等价于 aux.AddFusionProcMixRep(c,sub,insf,f,minc,maxc,code1)  
---@param c Card
---@param code integer
---@param f function
---@param minc integer
---@param maxc integer
---@param sub boolean
---@param insf boolean
function aux.AddFusionProcCodeFunRep(c, code, f, minc, maxc, sub, insf) end

-- ●void aux.AddFusionProcCode2FunRep(Card c, int code1, int code2, function f, int minc, int maxc, bool sub, bool insf)  
-- 为c 添加融合召唤手续  
-- 用卡号为 code1,code2 的各1只怪兽 ，和满足过滤条件 f 的 minc-maxc 只怪兽为融合素材  
-- 等价于 aux.AddFusionProcMixRep(c,sub,insf,f,minc,maxc,code1,code2)  
---@param c Card
---@param code1 integer
---@param code2 integer
---@param f function
---@param minc integer
---@param maxc integer
---@param sub boolean
---@param insf boolean
function aux.AddFusionProcCode2FunRep(c, code1, code2, f, minc, maxc, sub, insf) end

-- ●void aux.AddFusionProcShaddoll(Card c, int attribute)  
-- 影依融合怪兽专用，attribute 为需要的属性  
---@param c Card
---@param attribute integer
function aux.AddFusionProcShaddoll(c, attribute) end

-- ●void aux.AddRitualProcGreater(Card c, function filter)  
-- 为c添加仪式召唤效果  
-- filter 为仪式怪兽满足的条件，素材的仪式等级之和可以超过仪式怪兽的原本等级  
---@param c Card
---@param filter function
function aux.AddRitualProcGreater(c, filter) end

-- ●void aux.AddRitualProcGreaterCode(Card c, int code)  
-- 为c添加仪式召唤效果  
-- code 为仪式怪兽卡号，素材的仪式等级之和可以超过仪式怪兽的原本等级  
-- 等价于：aux.AddRitualProcGreater(c,aux.FilterBoolFunction(Card.IsCode,code)),并添加 fit_monster=code  
---@param c Card
---@param code integer
function aux.AddRitualProcGreaterCode(c, code) end

-- ●void aux.AddRitualProcEqual(Card c, function filter)  
-- 为c添加仪式召唤效果  
-- filter 为仪式怪兽满足的条件，素材的仪式等级之和必须等于仪式怪兽的原本等级  
---@param c Card
---@param filter function
function aux.AddRitualProcEqual(c, filter) end

-- ●void aux.AddRitualProcEqualCode(Card c, int code)  
-- 为c添加仪式召唤效果  
-- code 为仪式怪兽卡号，素材的仪式等级之和必须等于仪式怪兽的原本等级  
-- 等价于：aux.AddRitualProcEqual(c,aux.FilterBoolFunction(Card.IsCode,code)) ,并添加 fit_monster=code  
---@param c Card
---@param code integer
function aux.AddRitualProcEqualCode(c, code) end

-- ●void aux.AddRitualProcEqual2(Card c, function filter)  
-- 为c添加仪式召唤效果  
-- filter 为仪式怪兽满足的条件，素材的仪式等级之和必须等于仪式怪兽的等级(此等级可能会因为其他卡效果改变)  
---@param c Card
---@param filter function
function aux.AddRitualProcEqual2(c, filter) end

-- ●void aux.AddRitualProcEqual2Code(Card c, int code)  
-- 为c添加仪式召唤效果  
-- code 为仪式怪兽卡号，素材的等级之和必须等于仪式怪兽的等级  
-- 等价于：aux.AddRitualProcEqual2(c,aux.FilterBoolFunction(Card.IsCode,code)) ,并添加 fit_monster=code  
---@param c Card
---@param code integer
function aux.AddRitualProcEqual2Code(c, code) end

-- ●void aux.AddRitualProcEqual2Code2(Card c, int code1, int code2)  
-- 为c添加仪式召唤效果  
-- code1,code2 为仪式怪兽卡号，素材的等级之和必须等于仪式怪兽的等级  
-- 等价于：aux.AddRitualProcEqual2(c,aux.FilterBoolFunction(Card.IsCode,code1,code2)) ,并添加 fit_monster={code1,code2}  
---@param c Card
---@param code1 integer
---@param code2 integer
function aux.AddRitualProcEqual2Code2(c, code1, code2) end

-- ●void aux.EnablePendulumAttribute(Card c[, active_effect=true])  
-- 为灵摆怪兽c添加灵摆怪兽属性（灵摆召唤，灵摆卡的发动）  
-- active_effect=false则不注册灵摆卡“卡的发动”的效果  
---@param c Card
---@param active_effect? any true
function aux.EnablePendulumAttribute(c, active_effect) end

-- ●void aux.EnableReviveLimitPendulumSummonable(Card c[, int location=0xff])  
-- 如果 怪兽 c 从 location 灵摆召唤，也能解除苏生限制(?) (超天新龙 异色眼革命龙 (16306932))  
---@param c Card
---@param location? integer 0xff
function aux.EnableReviveLimitPendulumSummonable(c, location) end

-- ●void aux.AddLinkProcedure(Card c, function f|nil, int minc[, int maxc=99, function gf|nil])  
-- 为c添加连接召唤手续  
-- 用 minc-maxc 个满足过滤条件 f [的卡片组里满足过滤条件 gf ]的怪兽作为连接素材  
---@param c Card
---@param f? function
---@param minc integer
---@param maxc? integer 99
---@param gf? function
function aux.AddLinkProcedure(c, f, minc, maxc, gf) end

-- ●void aux.GetLinkCount(Card c)  
-- 返回卡片 c 作为连接素材时当做的素材数量  
-- function Auxiliary.GetLinkCount(c)  
-- 	if c:IsType(TYPE_LINK) and c:GetLink()>1 then  
-- 		return 1+0x10000*c:GetLink()  
-- 	else return 1 end  
-- end  
---@param c Card
function aux.GetLinkCount(c) end

-- ●bool aux.IsMaterialListCode(Card c[, int code])  
-- 检测 c 是否是有卡名 code 为素材的卡  
-- c.material  
---@param c Card
---@param code? integer
---@return boolean
function aux.IsMaterialListCode(c, code) end

-- ●bool aux.IsMaterialListSetCard(Card c[, int setcode])  
-- 检测 c 是否是有字段 setcode 为素材的卡  
-- c.material_setcode  
---@param c Card
---@param setcode? integer
---@return boolean
function aux.IsMaterialListSetCard(c, setcode) end

-- ●bool aux.IsCodeListed(Card c[, int code])  
-- 检测 c 是否是有卡名 code 记述的卡  
-- c.card_code_list  
---@param c Card
---@param code? integer
---@return boolean
function aux.IsCodeListed(c, code) end

-- ●int aux.GetColumn(Card c, int player=0)  
-- 返回以 player 来看的卡片 c 所在的那一列的序号，不包含 场地区域，从左到右 分别是 0~4  
---@param c Card
---@param player integer 0
---@return integer
function aux.GetColumn(c, player) end

-- ●int aux.MZoneSequence(int seq)  
-- 返回怪兽区的序号，从左到右 分别是 0~4 ,若在 额外怪兽区，则返回 左 1 或者 右 3  
---@param seq integer
---@return integer
function aux.MZoneSequence(seq) end

-- ●bool aux.disfilter1(Card c)  
-- 检测是否是 可以被无效效果的 怪兽  
-- function Auxiliary.disfilter1(c)  
-- 	return c:IsFaceup() and not c:IsDisabled() and (not c:IsType(TYPE_NORMAL) or c:GetOriginalType()&TYPE_EFFECT~=0)  
-- end  
---@param c Card
---@return boolean
function aux.disfilter1(c) end

-- ●bool aux.bdcon(Effect e, int tp, Group eg, int ep, int ev, Effect re, int r, int rp)  
-- 检测 e:GetHandler() 是否和本次战斗有关，通常用于 EVENT_BATTLE_DESTROYING 的 condition  
-- function Auxiliary.bdcon(e,tp,eg,ep,ev,re,r,rp)  
-- 	local c=e:GetHandler()  
-- 	return c:IsRelateToBattle()  
-- end  
---@param e Effect
---@param tp integer
---@param eg Group
---@param ep integer
---@param ev integer
---@param re Effect
---@param r integer
---@param rp integer
---@return boolean
function aux.bdcon(e, tp, eg, ep, ev, re, r, rp) end

-- ●bool aux.bdocon(Effect e, int tp, Group eg, int ep, int ev, Effect re, int r, int rp)  
-- 检测 e:GetHandler() 是否和本次战斗有关，通常用于 EVENT_BATTLE_DESTROYING,并且是与对方怪兽战斗 的 condition  
-- function Auxiliary.bdocon(e,tp,eg,ep,ev,re,r,rp)  
-- 	local c=e:GetHandler()  
-- 	return c:IsRelateToBattle() and c:IsStatus(STATUS_OPPO_BATTLE)  
-- end  
---@param e Effect
---@param tp integer
---@param eg Group
---@param ep integer
---@param ev integer
---@param re Effect
---@param r integer
---@param rp integer
---@return boolean
function aux.bdocon(e, tp, eg, ep, ev, re, r, rp) end

-- ●bool aux.bdgcon(Effect e, int tp, Group eg, int ep, int ev, Effect re, int r, int rp)  
-- 检测 e:GetHandler() 是否和本次战斗有关，通常用于 EVENT_BATTLE_DESTROYING,并且战斗破坏对方怪兽送去墓地 的 condition  
-- function Auxiliary.bdgcon(e,tp,eg,ep,ev,re,r,rp)  
-- 	local c=e:GetHandler()  
-- 	local bc=c:GetBattleTarget()  
-- 	return c:IsRelateToBattle() and bc:IsLocation(LOCATION_GRAVE) and bc:IsType(TYPE_MONSTER)  
-- end  
---@param e Effect
---@param tp integer
---@param eg Group
---@param ep integer
---@param ev integer
---@param re Effect
---@param r integer
---@param rp integer
---@return boolean
function aux.bdgcon(e, tp, eg, ep, ev, re, r, rp) end

-- ●bool aux.bdogcon(Effect e, int tp, Group eg, int ep, int ev, Effect re, int r, int rp)  
-- 检测 e:GetHandler() 是否和本次战斗有关，通常用于 EVENT_BATTLE_DESTROYING,并且是与对方怪兽战斗并战斗破坏对方怪兽送去墓地 的 condition  
-- function Auxiliary.bdogcon(e,tp,eg,ep,ev,re,r,rp)  
-- 	local c=e:GetHandler()  
-- 	local bc=c:GetBattleTarget()  
-- 	return c:IsRelateToBattle() and c:IsStatus(STATUS_OPPO_BATTLE) and bc:IsLocation(LOCATION_GRAVE) and bc:IsType(TYPE_MONSTER)  
-- end  
---@param e Effect
---@param tp integer
---@param eg Group
---@param ep integer
---@param ev integer
---@param re Effect
---@param r integer
---@param rp integer
---@return boolean
function aux.bdogcon(e, tp, eg, ep, ev, re, r, rp) end

-- ●bool aux.dogcon(Effect e, int tp, Group eg, int ep, int ev, Effect re, int r, int rp)  
-- 检测 e:GetHandler() 是否是从自己场上被对方破坏送去墓地 SetCondition  
-- function Auxiliary.dogcon(e,tp,eg,ep,ev,re,r,rp)  
-- 	local c=e:GetHandler()  
-- 	return c:GetPreviousControler()==tp and c:IsReason(REASON_DESTROY) and rp==1-tp  
-- end  
---@param e Effect
---@param tp integer
---@param eg Group
---@param ep integer
---@param ev integer
---@param re Effect
---@param r integer
---@param rp integer
---@return boolean
function aux.dogcon(e, tp, eg, ep, ev, re, r, rp) end

-- ●bool aux.exccon(Effect e)  
-- 这张卡送去墓地的回合 不能发动这个效果 的简单写法 SetCondition  
-- function aux.exccon(e)  
-- 	return Duel.GetTurnCount()~=e:GetHandler():GetTurnID() or e:GetHandler():IsReason(REASON_RETURN)  
-- end  
---@param e Effect
---@return boolean
function aux.exccon(e) end

-- ●bool aux.chainreg(Effect e, int tp, Group eg, int ep, int ev, Effect re, int r, int rp)  
-- 死亡魔导龙(81059524)用了此函数，其实就是相当于  
-- function aux.chainreg(e,tp,eg,ep,ev,re,r,rp)  
-- 	if e:GetHandler():GetFlagEffect(1)==0 then  
-- 		e:GetHandler():RegisterFlagEffect(1,RESET_EVENT+RESETS_STANDARD-RESET_TURN_SET+RESET_CHAIN,0,1)  
-- 	end  
-- end  
---@param e Effect
---@param tp integer
---@param eg Group
---@param ep integer
---@param ev integer
---@param re Effect
---@param r integer
---@param rp integer
---@return boolean
function aux.chainreg(e, tp, eg, ep, ev, re, r, rp) end

-- ●bool aux.imval1(Effect e, Card c)  
-- 不会成为攻击对象的过滤函数的简单写法，用在效果注册里 SetValue  
-- function aux.imval1(e,c)  
-- 	return not c:IsImmuneToEffect(e)  
-- end  
---@param e Effect
---@param c Card
---@return boolean
function aux.imval1(e, c) end

-- ●bool aux.indsval(Effect e, Effect re, int rp)  
-- 不会被自己的卡的效果破坏的过滤函数的简单写法，用在效果注册里 SetValue  
-- function aux.indsval(e,re,rp)  
-- 	return rp==e:GetHandlerPlayer()  
-- end  
---@param e Effect
---@param re Effect
---@param rp integer
---@return boolean
function aux.indsval(e, re, rp) end

-- ●bool aux.indoval(Effect e, Effect re, int rp)  
-- 不会被对方的卡的效果破坏的过滤函数的简单写法，用在效果注册里 SetValue  
-- function aux.indoval(e,re,rp)  
-- 	return rp==1-e:GetHandlerPlayer()  
-- end  
---@param e Effect
---@param re Effect
---@param rp integer
---@return boolean
function aux.indoval(e, re, rp) end

-- ●bool aux.tgsval(Effect e, Effect re, int rp)  
-- 不会成为自己的卡的效果对象的过滤函数的简单写法，用在效果注册里 SetValue  
-- function aux.tgsval(e,re,rp)  
-- 	return rp==e:GetHandlerPlayer()  
-- end  
---@param e Effect
---@param re Effect
---@param rp integer
---@return boolean
function aux.tgsval(e, re, rp) end

-- ●bool aux.tgoval(Effect e, Effect re, int rp)  
-- 不会成为对方的卡的效果对象的过滤函数的简单写法，用在效果注册里 SetValue  
-- function aux.tgoval(e,re,rp)  
-- 	return rp==e:GetHandlerPlayer()  
-- end  
---@param e Effect
---@param re Effect
---@param rp integer
---@return boolean
function aux.tgoval(e, re, rp) end

-- ●bool aux.nzatk(Card c)  
-- 攻击力不为0的表侧表示的怪兽的过滤函数的简单写法  
-- function aux.nzatk(c)  
-- 	return c:IsFaceup() and c:GetAttack()>0  
-- end  
---@param c Card
---@return boolean
function aux.nzatk(c) end

-- ●bool aux.nzdef(Card c)  
-- 守备力不为0的表侧表示的怪兽的过滤函数的简单写法  
-- function aux.nzdef(c)  
-- 	return c:IsFaceup() and c:GetDefense()>0  
-- end  
---@param c Card
---@return boolean
function aux.nzdef(c) end

-- ●bool aux.sumreg(Effect e, int tp, Group eg, int ep, int ev, Effect re, int r, int rp)  
-- 妖仙兽 阎魔巳裂(39853199)和一些其他卡(49249907,93368494)用了此函数，不过此函数★意★义★不★明★。  
-- 54109233 虽然没用此函数，但是用了一样的写法，同样是★意★义★不★明★，其实就是相当于  
-- function aux.sumreg(e,tp,eg,ep,ev,re,r,rp)  
-- 	local tc=eg:GetFirst()  
-- 	local code=e:GetLabel()  
-- 	while tc do  
-- 		if tc:GetOriginalCode()==code then  
-- 			tc:RegisterFlagEffect(code,RESET_EVENT+0x1ec0000+RESET_PHASE+PHASE_END,0,1)  
-- 		end  
-- 		tc=eg:GetNext()  
-- 	end  
-- end  
---@param e Effect
---@param tp integer
---@param eg Group
---@param ep integer
---@param ev integer
---@param re Effect
---@param r integer
---@param rp integer
---@return boolean
function aux.sumreg(e, tp, eg, ep, ev, re, r, rp) end

-- ●bool aux.fuslimit(Effect e, Effect se, int sp, int st)  
-- 不能用 融合召唤 以外的方式召唤(广义的) 的过滤函数的简单写法，用在效果注册里 SetValue  
-- se 指召唤这张卡的效果， sp 是召唤的玩家， st 是召唤的类型  
-- function aux.fuslimit(e,se,sp,st)  
-- 	return st&SUMMON_TYPE_FUSION==SUMMON_TYPE_FUSION  
-- end  
---@param e Effect
---@param se Effect
---@param sp integer
---@param st integer
---@return boolean
function aux.fuslimit(e, se, sp, st) end

-- ●bool aux.ritlimit(Effect e, Effect se, int sp, int st)  
-- 不能用 仪式召唤 以外的方式召唤(广义的) 的过滤函数的简单写法，用在效果注册里 SetValue  
-- se 指召唤这张卡的效果， sp 是召唤的玩家， st 是召唤的类型  
-- function aux.ritlimit(e,se,sp,st)  
-- 	return st&SUMMON_TYPE_RITUAL==SUMMON_TYPE_RITUAL  
-- end  
---@param e Effect
---@param se Effect
---@param sp integer
---@param st integer
---@return boolean
function aux.ritlimit(e, se, sp, st) end

-- ●bool aux.synlimit(Effect e, Effect se, int sp, int st)  
-- 不能用 同调召唤 以外的方式召唤(广义的) 的过滤函数的简单写法，用在效果注册里 SetValue  
-- se 指召唤这张卡的效果， sp 是召唤的玩家， st 是召唤的类型  
-- function aux.synlimit(e,se,sp,st)  
-- 	return st&SUMMON_TYPE_SYNCHRO==SUMMON_TYPE_SYNCHRO  
-- end  
---@param e Effect
---@param se Effect
---@param sp integer
---@param st integer
---@return boolean
function aux.synlimit(e, se, sp, st) end

-- ●bool aux.xyzlimit(Effect e, Effect se, int sp, int st)  
-- 不能用 XYZ召唤 以外的方式召唤(广义的) 的过滤函数的简单写法，用在效果注册里 SetValue  
-- se 指召唤这张卡的效果， sp 是召唤的玩家， st 是召唤的类型  
-- function aux.xyzlimit(e,se,sp,st)  
-- 	return st&SUMMON_TYPE_XYZ==SUMMON_TYPE_XYZ  
-- end  
---@param e Effect
---@param se Effect
---@param sp integer
---@param st integer
---@return boolean
function aux.xyzlimit(e, se, sp, st) end

-- ●bool aux.penlimit(Effect e, Effect se, int sp, int st)  
-- 不能用 灵摆召唤 以外的方式召唤(广义的) 的过滤函数的简单写法，用在效果注册里 SetValue  
-- se 指召唤这张卡的效果， sp 是召唤的玩家， st 是召唤的类型  
-- function aux.penlimit(e,se,sp,st)  
-- 	return st&SUMMON_TYPE_PENDULUM==SUMMON_TYPE_PENDULUM  
-- end  
---@param e Effect
---@param se Effect
---@param sp integer
---@param st integer
---@return boolean
function aux.penlimit(e, se, sp, st) end

-- ●bool aux.linklimit(Effect e, Effect se, int sp, int st)  
-- 不能用 连接召唤 以外的方式召唤(广义的) 的过滤函数的简单写法，用在效果注册里 SetValue  
-- se 指召唤这张卡的效果， sp 是召唤的玩家， st 是召唤的类型  
-- function aux.linklimit(e,se,sp,st)  
-- 	return st&SUMMON_TYPE_LINK==SUMMON_TYPE_LINK  
-- end  
---@param e Effect
---@param se Effect
---@param sp integer
---@param st integer
---@return boolean
function aux.linklimit(e, se, sp, st) end

-- ●bool aux.damcon1(Effect e, int tp, Group eg, int ep, int ev, Effect re, int r, int rp)  
-- 玩家 tp 受到伤害 这个条件的简单写法，，用在效果注册里 SetCondition  
-- function aux.damcon1(e,tp,eg,ep,ev,re,r,rp)  
-- 	local e1=Duel.IsPlayerAffectedByEffect(tp,EFFECT_REVERSE_DAMAGE)  
-- 	local e2=Duel.IsPlayerAffectedByEffect(tp,EFFECT_REVERSE_RECOVER)  
-- 	local rd=e1 and not e2  
-- 	local rr=not e1 and e2  
-- 	local ex,cg,ct,cp,cv=Duel.GetOperationInfo(ev,CATEGORY_DAMAGE)  
-- 	if ex and (cp==tp or cp==PLAYER_ALL) and not rd and not Duel.IsPlayerAffectedByEffect(tp,EFFECT_NO_EFFECT_DAMAGE) then  
-- 		return true  
-- 	end  
-- 	ex,cg,ct,cp,cv=Duel.GetOperationInfo(ev,CATEGORY_RECOVER)  
-- 	return ex and (cp==tp or cp==PLAYER_ALL) and rr and not Duel.IsPlayerAffectedByEffect(tp,EFFECT_NO_EFFECT_DAMAGE)  
-- end  
---@param e Effect
---@param tp integer
---@param eg Group
---@param ep integer
---@param ev integer
---@param re Effect
---@param r integer
---@param rp integer
---@return boolean
function aux.damcon1(e, tp, eg, ep, ev, re, r, rp) end

-- ●bool aux.qlifilter(Effect e, Effect te)  
-- 机壳怪兽通用抗性(不受原本等级·阶级比这张卡等级低的怪兽效果影响)的过滤函数的简单写法，用在效果注册里 SetValue  
-- te 是 将要影响到 e:GetHandler() 的效果  
-- function aux.qlifilter(e,te)  
-- 	if te:IsActiveType(TYPE_MONSTER) and te:IsActivated() then  
-- 		local lv=e:GetHandler():GetLevel()  
-- 		local ec=te:GetOwner()  
-- 		if ec:IsType(TYPE_LINK) then  
-- 			return false  
-- 		elseif ec:IsType(TYPE_XYZ) then  
-- 			return ec:GetOriginalRank()<lv  
-- 		else  
-- 			return ec:GetOriginalLevel()<lv  
-- 		end  
-- 	else  
-- 		return false  
-- 	end  
-- end  
---@param e Effect
---@param te Effect
---@return boolean
function aux.qlifilter(e, te) end

-- ●bool aux.gbspcon(Effect e, int tp, Group eg, int ep, int ev, Effect re, int r, int rp)  
-- 剑斗兽通用效果(用「剑斗兽」怪兽的效果特殊召唤)的过滤条件的简单写法，用在效果注册里 SetCondition  
-- 2619149,4253484,31247589,42592719,65984457,78868776,  虽然写法不同，但是没问题  
-- function aux.gbspcon(e,tp,eg,ep,ev,re,r,rp)  
-- 	local st=e:GetHandler():GetSummonType()  
-- 	return st>=(SUMMON_TYPE_SPECIAL+100) and st<(SUMMON_TYPE_SPECIAL+150)  
-- end  
---@param e Effect
---@param tp integer
---@param eg Group
---@param ep integer
---@param ev integer
---@param re Effect
---@param r integer
---@param rp integer
---@return boolean
function aux.gbspcon(e, tp, eg, ep, ev, re, r, rp) end

-- ●bool aux.evospcon(Effect e, int tp, Group eg, int ep, int ev, Effect re, int r, int rp)  
-- 进化龙通用效果(用「进化虫」怪兽的效果特殊召唤)的过滤条件的简单写法，用在效果注册里 SetCondition  
-- function aux.evospcon(e,tp,eg,ep,ev,re,r,rp)  
-- 	local st=e:GetHandler():GetSummonType()  
-- 	return st>=(SUMMON_TYPE_SPECIAL+150) and st<(SUMMON_TYPE_SPECIAL+180)  
-- end  
---@param e Effect
---@param tp integer
---@param eg Group
---@param ep integer
---@param ev integer
---@param re Effect
---@param r integer
---@param rp integer
---@return boolean
function aux.evospcon(e, tp, eg, ep, ev, re, r, rp) end

-- ●function aux.NecroValleyFilter(function f)  
-- 根据过滤条件f返回一个新的过滤条件：满足f并且不受王家长眠之谷的影响的卡  
-- function Auxiliary.NecroValleyFilter(f)  
-- 	return	function(target,...)  
-- 				return f(target,...) and not (target:IsHasEffect(EFFECT_NECRO_VALLEY) and Duel.IsChainDisablable(0))  
-- 			end  
-- end  
---@param f function
---@return function
function aux.NecroValleyFilter(f) end

-- ●bool aux.bfgcost(Effect e, int tp, Group eg, int ep, int ev, Effect re, int r, int rp, int chk)  
-- 把这张卡除外 的过滤条件的简单写法，，用在效果注册的 cost 里  
-- function aux.bfgcost(e,tp,eg,ep,ev,re,r,rp,chk)  
-- 	if chk==0 then return e:GetHandler():IsAbleToRemoveAsCost() end  
-- 	Duel.Remove(e:GetHandler(),POS_FACEUP,REASON_COST)  
-- end  
---@param e Effect
---@param tp integer
---@param eg Group
---@param ep integer
---@param ev integer
---@param re Effect
---@param r integer
---@param rp integer
---@param chk integer
---@return boolean
function aux.bfgcost(e, tp, eg, ep, ev, re, r, rp, chk) end

-- ●bool aux.ExceptThisCard(Effect e)  
-- 若 e:GetHandler() 与效果 e 有联系，则返回 e:GetHandler() ,否则返回 nil  
-- function aux.ExceptThisCard(e)  
-- 	local c=e:GetHandler()  
-- 	if c:IsRelateToEffect(e) then return c else return nil end  
-- end  
---@param e Effect
---@return boolean
function aux.ExceptThisCard(e) end

-- ●bool aux.GetMultiLinkedZone(int tp)  
-- 获取玩家tp场上所有被多只怪兽指向的格子  
-- function aux.GetMultiLinkedZone(tp)  
-- 	local f=function(c)  
-- 		return c:IsFaceup() and c:IsType(TYPE_LINK)  
-- 	end  
-- 	local lg=Duel.GetMatchingGroup(f,tp,LOCATION_MZONE,LOCATION_MZONE,nil)  
-- 	local multi_linked_zone=0  
-- 	local single_linked_zone=0  
-- 	for tc in aux.Next(lg) do  
-- 		local zone=tc:GetLinkedZone(tp)&0x7f  
-- 		multi_linked_zone=single_linked_zone&zone|multi_linked_zone  
-- 		single_linked_zone=single_linked_zone~zone  
-- 	end  
-- 	return multi_linked_zone  
-- end  
---@param tp integer
---@return boolean
function aux.GetMultiLinkedZone(tp) end

-- ●bool aux.UseExtraReleaseCount(Group g,int tp)  
-- 强制使用类似暗影敌托邦这样的代替解放效果次数。  
-- function Auxiliary.UseExtraReleaseCount(g,tp)  
-- 	local eg=g:Filter(Auxiliary.ExtraReleaseFilter,nil,tp)  
-- 	for ec in Auxiliary.Next(eg) do  
-- 		local te=ec:IsHasEffect(EFFECT_EXTRA_RELEASE_NONSUM,tp)  
-- 		if te then te:UseCountLimit(tp) end  
-- 	end  
-- end  
---@param g Group
---@param tp integer
---@return boolean
function aux.UseExtraReleaseCount(g, tp) end

-- ●bool aux.PlaceCardsOnDeckBottom(int p,Group g,int reason)  
-- 让玩家p把g放在卡组底端，顺序由自己选择，原因为reason。  
---@param p integer
---@param g Group
---@param reason integer
---@return boolean
function aux.PlaceCardsOnDeckBottom(p, g, reason) end

-- ●bool aux.AtkEqualsDef(Card c)  
-- 检查c的攻击是否和防御力相同。  
-- 目前在场则会追加检查当前值，是LINK怪兽或不是怪兽则直接返回false。  
---@param c Card
---@return boolean
function aux.AtkEqualsDef(c) end

-- ●bool aux.SelectFromOptions(int tp,...)  
-- 让玩家选择选项。  
-- 第二个数值以后每个数值都应当是一个table：  
-- table的第一个数值是一个bool值，指示此选项是否有效。  
-- table的第二个数值是这个选项的string id。  
-- table的第三个数值是这个选项的返回值。  
-- 使用方法如aux.SelectFromOptions(tp,  
-- 	{b1,aux.Stringid(11654067,0)},  
-- 	{b2,aux.Stringid(11654067,1)},  
-- 	{true,aux.Stringid(11654067,2)})  
---@param tp integer
---@param ... any
---@return boolean
function aux.SelectFromOptions(tp, ...) end

return aux
