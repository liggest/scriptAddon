---@meta

---@class Effect
local Effect = {}

-- 新建一个空效果  
-- 并且效果的Owner为c
---@param c Card
---@return Effect
function Effect.CreateEffect(c) end

---设置Category属性
---@param e Effect
---@param cate integer
function Effect.SetCategory(e, cate) end

---为效果e设置Type属性
---@param e Effect
---@param type integer
function Effect.SetType(e, type) end

---为效果e设置Code属性
---@param e Effect
---@param code integer
function Effect.SetCode(e, code) end

---设置Target属性
---@param e Effect
---@param targ_func TargetFun
function Effect.SetTarget(e, targ_func) end

---设置Operation属性
---@param e Effect
---@param op_func nil | OperationFun 
function Effect.SetOperation(e, op_func) end



return Effect
