
---@meta

---@class Card
---@field initial_effect fun(c:Card)
local Card = require("card.gen")

-- 载入卡片时调用  
-- 一般是注册初始卡片效果，以及设置苏生限制等等
---@param c Card
function Card.initial_effect(c) end

--- 把效果e注册给c，返回效果的全局id，并设置e的Handler为c  
--- 默认情况下注册时如果c带有免疫e的效果那么注册会失败  
--- 如果forced为true则不会检查c对e的免疫效果
---@param c Card
---@param e Effect
---@param forced? boolean
---@return integer
function Card.RegisterEffect(c, e, forced) end

return Card


