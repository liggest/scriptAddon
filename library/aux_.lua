---@meta

---@class aux
local aux = require("aux_.gen")

-- ●void aux.AddFusionProcMixRep(Card c, bool sub, bool insf, int code1, int minc, int maxc, ...)  
-- 为c 添加融合召唤手续  
-- 用满足f1 的怪兽 minc-maxc 只，和 额外参数里 各1只的怪兽为融合素材,  
-- 额外参数的类型 可以是 function 或者 卡密(int code),传入 code 相当于传入 function(code) return c:IsFusionCode(code) end  
---@param c Card
---@param sub boolean
---@param insf boolean
---@param code1 integer
---@param minc integer
---@param maxc integer
---@param ... any
---@overload fun(c:Card, sub:boolean, insf:boolean, f1:function, minc:integer, maxc:integer, ...)
function aux.AddFusionProcMixRep(c, sub, insf, code1, minc, maxc, ...) end

return aux
