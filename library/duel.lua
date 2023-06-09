---@meta

---@class Duel
local Duel = require("duel.gen")

-- 过滤函数，检查以player来看的指定位置是否存在至少count张满足过滤条件f并且不等于ex的卡  
-- s代表以player来看的自己的位置，o代表以player来看的对方的位置  
-- 第7个参数开始为额外参数
---@param f FilterFun
---@param player integer
---@param s integer
---@param o integer
---@param count integer
---@param ex Card | Group | nil
---@param ... any
function Duel.IsExistingMatchingCard(f, player, s, o, count, ex, ...) end

-- ●void Duel.SetOperationInfo(int chainc, int category, Card|Group targets, int count, int target_player, int target_param)  
-- 设置当前处理的连锁的操作信息此操作信息包含了效果处理中确定要处理的效果分类  
-- 比如潜行狙击手需要设置CATEGORY_DICE，但是不能设置CATEGORY_DESTROY，因为不确定  
-- 对于破坏效果，targets需要设置成发动时可能成为连锁的影响对象的卡，  
-- 并设置count为发动时确定的要处理的卡的数量  
-- 比如黑洞发动时，targets需要设定为场上的所有怪兽，count设置成场上的怪的数量  
-- 对于需要移动卡片位置的CATEGORY_SPECIAL_SUMMON,CATEGORY_TOHAND,CATEGORY_TODECK等分类，  
-- 如果要处理的卡是确定的（比如取对象），则设置targets为这些卡，count为数量，  
-- 如果要处理的卡是不确定的（效果处理时才能确定，一般是不取对象的效果），  
-- 	则设置targets为nil，count为预计要处理的卡的数量，  
-- 	target_player为预计要处理的卡的持有者（不确定就为0）  
-- 	target_param为预计要处理的卡的位置  
-- 例如增援：SetOperationInfo(0,CATEGORY_TOHAND,nil,1,tp,LOCATION_DECK)  
-- 操作信息用于很多效果的发动的检测，例如星尘龙，王家长眠之谷等  
---@param chainc integer
---@param category integer
---@param targets Card | Group | nil
---@param count integer
---@param target_player integer
---@param target_param integer
function Duel.SetOperationInfo(chainc, category, targets, count, target_player, target_param)  end

-- ●void Duel.Hint(int hint_type, int player, int desc)  
-- 给玩家player发送hint_type类型的消息提示，提示内容为desc  
-- #hint_type只能为以下类型：  
-- #HINT_SELECTMSG		将提示内容写入缓存，用于选择卡片的提示，例如Duel.SelectMatchingCard等  
-- #HINT_OPSELECTED	向player提示“对方选择了：...”，常用于向对方玩家提示选择发动了什么效果  
-- #HINT_CARD			此时desc应为卡号，手动显示卡片发动的动画，常用于提示不入连锁的处理  
-- #HINT_RACE			此时desc应为种族，向player提示“对方宣言了：...”种族  
-- #HINT_ATTRIB		此时desc应为属性，向player提示“对方宣言了：...”属性  
-- #HINT_CODE			此时desc应为卡号，向player提示“对方宣言了：...”卡片  
-- #HINT_NUMBER		此时desc视为单纯的数字，向player提示“对方选择了：...”数字  
-- #HINT_MESSAGE		弹出一个对话框显示信息  
-- #HINT_EVENT			将提示内容写入缓存，用于时点的提示信息（诱发即时效果的提示）  
-- #HINT_EFFECT		同HINT_CARD
---@param hint_type integer
---@param player integer
---@param desc integer
function Duel.Hint(hint_type, player, desc) end

-- ●Group Duel.SelectMatchingCard(int sel_player, function f|nil, int player, int s, int o, int min, int max, Card|Group ex|nil, ...)  
--     过滤函数，让玩家sel_player选择以player来看的指定位置满足过滤条件f并且不等于ex的min-max张卡  
--     s代表以player来看的自己的位置，o代表以player来看的对方的位置  
--     第9个参数开始为额外参数
---@param sel_player integer
---@param f FilterFun | nil
---@param player integer
---@param s integer
---@param o integer
---@param min integer
---@param max integer
---@param ex? Card | Group
---@param ... any
---@return Group
function Duel.SelectMatchingCard(sel_player, f, player, s, o, min, max, ex, ...) end

-- ●int Duel.SendtoHand(Card|Group targets, int player|nil, int reason)  
-- 以reason原因把targets送去玩家player的手卡，返回值是实际被操作的数量  
-- 如果player是nil则返回卡的持有者的手卡
---@param targets Card | Group
---@param player integer | nil
---@param reason integer
---@return integer
function Duel.SendtoHand(targets, player, reason) end

-- ●void Duel.ConfirmCards(int player, Card|Group targets)  
-- 给玩家player确认targets
---@param player integer
---@param targets Card | Group
function Duel.ConfirmCards(player, targets) end

return Duel
