---@meta

---@class Effect
local Effect = {}

-- ●Effect Effect.CreateEffect(Card c)  
-- 新建一个空效果  
-- 并且效果的Owner为c  
---@param c Card
---@return Effect
function Effect.CreateEffect(c) end

-- ●Effect Effect.GlobalEffect()  
-- 新建一个全局效果  
---@return Effect
function Effect.GlobalEffect() end

-- ●Effect Effect.Clone(Effect e)  
-- 新建一个效果e的副本  
---@param e Effect
---@return Effect
function Effect.Clone(e) end

-- ●void Effect.Reset(Effect e)  
-- 把效果e重置，重置之后不可以再使用此效果  
---@param e Effect
function Effect.Reset(e) end

-- ●int Effect.GetFieldID(Effect e)  
-- 获取效果e的id  
---@param e Effect
---@return integer
function Effect.GetFieldID(e) end

-- ●void Effect.SetDescription(Effect e, int desc)  
-- 为效果e设置效果描述  
---@param e Effect
---@param desc integer
function Effect.SetDescription(e, desc) end

-- ●void Effect.SetCode(Effect e, int code)  
-- 为效果e设置Code属性  
---@param e Effect
---@param code integer
function Effect.SetCode(e, code) end

-- ●void Effect.SetRange(Effect e, int range)  
-- 为效果e设置Range属性，即e的生效位置  
---@param e Effect
---@param range integer
function Effect.SetRange(e, range) end

-- ●void Effect.SetTargetRange(Effect e, int s_range, int o_range)  
-- 为效果e设置Target Range属性  
-- 	s_range指影响的我方区域  
-- 	o_range值影响的对方区域  
-- 	如果property属性中指定了EFFECT_FLAG_ABSOLUTE_RANGE标志，  
-- 		那么s_range指玩家1受到影响的区域，o_range指玩家2受到影响的区域  
-- 	如果这是一个召唤(覆盖)/限制召唤(覆盖)/特殊召唤手续  
-- 	(EFFECT_SUMMON_PROC/EFFECT_LIMIT_SUMMON_PROC/EFFECT_SPSUMMON_PROC等)的效果，  
-- 		并且property指定了EFFECT_FLAG_SPSUM_PARAM标志，  
-- 		那么s_range表示特殊召唤到的哪个玩家的场地，  
-- 	o_range表示可选择的表示形式  
---@param e Effect
---@param s_range integer
---@param o_range integer
function Effect.SetTargetRange(e, s_range, o_range) end

-- ●void Effect.SetAbsoluteRange(Effect e, int playerid, int s_range, int o_range)  
-- 设置target range属性并设置 EFFECT_FLAG_ABSOLUTE_TARGET 标志  
-- 	playerid != 0 s_range和o_range反转  
---@param e Effect
---@param playerid integer
---@param s_range integer
---@param o_range integer
function Effect.SetAbsoluteRange(e, playerid, s_range, o_range) end

-- ●void Effect.SetCountLimit(Effect e, int count=1[, int code=0])  
-- 设置一回合可以发动的次数count（仅触发型效果有效），相同的code(不等于0或1时)共用1个次数  
-- code包含以下数值具有特殊的性质  
-- EFFECT_COUNT_CODE_OATH          誓约使用次数  
-- EFFECT_COUNT_CODE_DUEL          决斗中使用次数  
-- EFFECT_COUNT_CODE_SINGLE        同一张卡多个效果公共使用次数（不限制同名卡）  
---@param e Effect
---@param count integer
---@param code? integer
function Effect.SetCountLimit(e, count, code) end

-- ●void Effect.SetReset(Effect e, int reset_flag[, int reset_count=1])  
-- 设置reset参数  
---@param e Effect
---@param reset_flag integer
---@param reset_count? integer
function Effect.SetReset(e, reset_flag, reset_count) end

-- ●void Effect.SetType(Effect e, int type)  
-- 为效果e设置Type属性  
---@param e Effect
---@param type integer
function Effect.SetType(e, type) end

-- ●void Effect.SetProperty(Effect e, int prop1[, int prop2])  
-- 设置Property属性  
---@param e Effect
---@param prop1 integer
---@param prop2? integer
function Effect.SetProperty(e, prop1, prop2) end

-- ●void Effect.SetLabel(Effect e, int label)  
-- 设置Label属性  
---@param e Effect
---@param label integer
function Effect.SetLabel(e, label) end

-- ●void Effect.SetLabelObject(Effect e, Card|Group|Effect labelobject)  
-- 设置LabelObject属性  
---@param e Effect
---@param labelobject Card | Group | Effect
function Effect.SetLabelObject(e, labelobject) end

-- ●void Effect.SetCategory(Effect e, int cate)  
-- 设置Category属性  
---@param e Effect
---@param cate integer
function Effect.SetCategory(e, cate) end

-- ●void Effect.SetHintTiming(Effect e, int s_time[, int o_time=s_time])  
-- 设置提示时点，第二个和第三个参数分别表示 自己 和对方的回合  
---@param e Effect
---@param s_time integer
---@param o_time? integer
function Effect.SetHintTiming(e, s_time, o_time) end

-- ●void Effect.SetCondition(Effect e, function con_func)  
-- 设置Condition属性  
---@param e Effect
---@param con_func function
function Effect.SetCondition(e, con_func) end

-- ●void Effect.SetCost(Effect e, function cost_func)  
-- 设置Cost属性  
---@param e Effect
---@param cost_func function
function Effect.SetCost(e, cost_func) end

-- ●void Effect.SetTarget(Effect e, function targ_func)  
-- 设置Target属性  
---@param e Effect
---@param targ_func function
function Effect.SetTarget(e, targ_func) end

-- ●void Effect.SetValue(Effect e, function|int|bool val)  
-- 设置Value属性  
---@param e Effect
---@param val function | integer | boolean
function Effect.SetValue(e, val) end

-- ●void Effect.SetOperation(Effect e, nil|function op_func)  
-- 设置Operation属性  
---@param e Effect
---@param op_func nil | function
function Effect.SetOperation(e, op_func) end

-- ●void Effect.SetOwnerPlayer(Effect e[, int player=0])  
-- 设置OwnerPlayer属性为player  
---@param e Effect
---@param player? integer
function Effect.SetOwnerPlayer(e, player) end

-- ●int Effect.GetDescription(Effect e)  
-- 返回效果描述，没有则返回nil，下同（到 GetCategory ）  
---@param e Effect
---@return integer
function Effect.GetDescription(e) end

-- ●int Effect.GetCode(Effect e)  
-- 返回code属性  
---@param e Effect
---@return integer
function Effect.GetCode(e) end

-- ●int Effect.GetType(Effect e)  
-- 返回Type属性  
---@param e Effect
---@return integer
function Effect.GetType(e) end

-- ●int,int Effect.GetProperty(Effect e)  
-- 返回Property属性  
---@param e Effect
---@return integer
---@return integer
function Effect.GetProperty(e) end

-- ●int Effect.GetLabel(Effect e)  
-- 返回Label属性  
---@param e Effect
---@return integer
function Effect.GetLabel(e) end

-- ●Card|Group|Effect Effect.GetLabelObject(Effect e)  
-- 返回LabelObject属性  
---@param e Effect
---@return Card | Group | Effect
function Effect.GetLabelObject(e) end

-- ●int Effect.GetCategory(Effect e)  
-- 返回Category属性  
---@param e Effect
---@return integer
function Effect.GetCategory(e) end

-- ●Card Effect.GetOwner(Effect e)  
-- 返回Owner属性  
---@param e Effect
---@return Card
function Effect.GetOwner(e) end

-- ●Card Effect.GetHandler(Effect e)  
-- 返回效果在哪一张卡上生效(通常是用Card.RegisterEffect注册该效果的卡)  
---@param e Effect
---@return Card
function Effect.GetHandler(e) end

-- ●function Effect.GetCondition(Effect e)  
-- 返回condition属性  
---@param e Effect
---@return function
function Effect.GetCondition(e) end

-- ●function Effect.GetTarget(Effect e)  
-- 返回target属性  
---@param e Effect
---@return function
function Effect.GetTarget(e) end

-- ●function Effect.GetCost(Effect e)  
-- 返回cost属性  
---@param e Effect
---@return function
function Effect.GetCost(e) end

-- ●function|int Effect.GetValue(Effect e)  
-- 返回value属性  
---@param e Effect
---@return function | integer
function Effect.GetValue(e) end

-- ●function Effect.GetOperation(Effect e)  
-- 返回operation属性  
---@param e Effect
---@return function
function Effect.GetOperation(e) end

-- ●int Effect.GetActiveType(Effect e)  
-- 返回e的效果类型（怪兽·魔法·陷阱）  
-- 与发动该效果的卡的类型不一定相同，比如灵摆效果视为魔法卡的效果  
---@param e Effect
---@return integer
function Effect.GetActiveType(e) end

-- ●bool Effect.IsActiveType(Effect e, int type)  
-- 检查e的效果类型（怪兽·魔法·陷阱）是否有type  
---@param e Effect
---@param type integer
---@return boolean
function Effect.IsActiveType(e, type) end

-- ●int Effect.GetOwnerPlayer(Effect e)  
-- 返回OwnerPlayer属性，一般是Owner的控制者  
---@param e Effect
---@return integer
function Effect.GetOwnerPlayer(e) end

-- ●int Effect.GetHandlerPlayer(Effect e)  
-- 返回当前者，一般是Handle的控制者  
---@param e Effect
---@return integer
function Effect.GetHandlerPlayer(e) end

-- ●bool Effect.IsHasProperty(Effect e, int prop1[, int prop2])  
-- 检查效果是否含有标志prop1[和prop2]  
---@param e Effect
---@param prop1 integer
---@param prop2? integer
---@return boolean
function Effect.IsHasProperty(e, prop1, prop2) end

-- ●bool Effect.IsHasCategory(Effect e, int cate)  
-- 检查效果是否含有效果分类cate  
---@param e Effect
---@param cate integer
---@return boolean
function Effect.IsHasCategory(e, cate) end

-- ●bool Effect.IsHasType(Effect e, int type)  
-- 检查效果是否属于类型type  
---@param e Effect
---@param type integer
---@return boolean
function Effect.IsHasType(e, type) end

-- ●bool Effect.IsActivatable(Effect e, int player[, bool neglect_loc=false, bool neglect_target=false])  
-- 检查效果e能否由player发动  
-- neglect_loc=true 为不检测发动位置， neglect_target=true 为不检测对象要求  
---@param e Effect
---@param player integer
---@param neglect_loc? boolean
---@param neglect_target? boolean
---@return boolean
function Effect.IsActivatable(e, player, neglect_loc, neglect_target) end

-- ●bool Effect.IsActivated(Effect e)  
-- 检查效果e能否是发动的效果，也就是以下类型  
-- EFFECT_TYPE_ACTIVATE		=0x0010		--魔陷发动  
-- EFFECT_TYPE_FLIP			=0x0020		--翻转效果  
-- EFFECT_TYPE_IGNITION		=0x0040		--起动效果  
-- EFFECT_TYPE_TRIGGER_O		=0x0080		--诱发选发效果  
-- EFFECT_TYPE_QUICK_O			=0x0100		--诱发即时效果  
-- EFFECT_TYPE_TRIGGER_F		=0x0200		--诱发必发效果  
-- EFFECT_TYPE_QUICK_F			=0x0400		--诱发即时必发效果（熊猫龙等）  
---@param e Effect
---@return boolean
function Effect.IsActivated(e) end

-- ●int Effect.GetActivateLocation(Effect e)  
-- 返回效果e的发动区域  
---@param e Effect
---@return integer
function Effect.GetActivateLocation(e) end

-- ●int Effect.GetActivateSequence(Effect e)  
-- 返回效果e的发动区域序号  
---@param e Effect
---@return integer
function Effect.GetActivateSequence(e) end

-- ●bool Effect.CheckCountLimit(Effect e, int p)  
-- 检测玩家 p 是否还有可以发动的效果 e 的次数  
---@param e Effect
---@param p integer
---@return boolean
function Effect.CheckCountLimit(e, p) end

-- ●void Effect.UseCountLimit(Effect e, int p[, int count=1, bool oath_only=false])  
-- 手动减少玩家 p 对效果 e 的 count 个可用次数[ oath_only 为 该效果是否是 EFFECT_FLAG_OATH]  
---@param e Effect
---@param p integer
---@param count? integer
---@param oath_only? boolean
function Effect.UseCountLimit(e, p, count, oath_only) end

-- ●void Effect.SetOwner(Effect e, Card c)  
-- 将e的Owner属性设置为c。  
---@param e Effect
---@param c Card
function Effect.SetOwner(e, c) end

-- ●int Effect.GetRange(Effect e)  
-- 返回e的Range属性。  
---@param e Effect
---@return integer
function Effect.GetRange(e) end

-- ●int[,int] Effect.GetCountLimit(Effect e)  
-- 返回e的CountLimit属性。  
---@param e Effect
---@return integer
---@return integer | nil
function Effect.GetCountLimit(e) end

return Effect
