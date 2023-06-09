---@meta

---@class Debug
local Debug = require("debug.gen")

-- ●void Debug.Message(any msg)  
-- 显示消息。  
-- 注意，只会在本地生效，在服务器端不会生效。  
---@param msg any
function Debug.Message(msg) end

-- ●Card Debug.AddCard(int code, int owner, int player, int location, int seq, int pos[, bool proc=false])  
-- 添加卡片，将卡号为code的卡片的持有者设置为owner，以表示形式pos放置在player的场上位于location上序号为seq的格子处  
-- proc=true则完成正规召唤程序(即解除苏生限制)  
---@param code integer
---@param owner integer
---@param player integer
---@param location integer
---@param seq integer
---@param pos integer
---@param proc? boolean false
---@return Card
function Debug.AddCard(code, owner, player, location, seq, pos, proc) end

-- ●void Debug.SetPlayerInfo(int playerid, int lp, int startcount, int drawcount)  
-- 设置玩家信息，基本分为lp，初始手卡为startcount张，每回合抽drawcount张  
-- 在残局当中， playerid ：自己=0,对方=1  
---@param playerid integer
---@param lp integer
---@param startcount integer
---@param drawcount integer
function Debug.SetPlayerInfo(playerid, lp, startcount, drawcount) end

-- ●void Debug.PreSummon(Card c, int sum_type[, int sum_location=0])  
-- 设置卡片c的召唤信息：以 sum_type 方法(通常召唤、特殊召唤等)[从 sum_location]出场  
---@param c Card
---@param sum_type integer
---@param sum_location? integer 0
function Debug.PreSummon(c, sum_type, sum_location) end

-- ●bool Debug.PreEquip(Card equip_card, Card target)  
-- 为target添加装备equip_card ，返回值表示是否成功  
---@param equip_card Card
---@param target Card
---@return boolean
function Debug.PreEquip(equip_card, target) end

-- ●void Debug.PreSetTarget(Card c, Card target)  
-- 把target选为c的永续对象  
---@param c Card
---@param target Card
function Debug.PreSetTarget(c, target) end

-- ●void Debug.PreAddCounter(Card c, int counter_type[, int count=0])  
-- 为c添加count个counter_type的指示物  
---@param c Card
---@param counter_type integer
---@param count? integer 0
function Debug.PreAddCounter(c, counter_type, count) end

-- ●void Debug.ReloadFieldBegin(int flag[, int rule=3])  
-- 以选项flag开始布局  
-- 	flag 残局： DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI  
-- 		 大师1规则： DUEL_OBSOLETE_RULING  
-- 	rule=4 是新大师规则  
---@param flag integer
---@param rule? integer 3
function Debug.ReloadFieldBegin(flag, rule) end

-- ●void Debug.ReloadFieldEnd()  
-- 布局结束  
function Debug.ReloadFieldEnd() end

-- ●void Debug.SetAIName(string name)  
-- 设置AI的名字，最大长度 100 个字符（1个汉字2个字符）  
---@param name string
function Debug.SetAIName(name) end

-- ●void Debug.ShowHint(string msg)  
-- 显示消息提示框，最大长度 1024 个字符（1个汉字2个字符）  
-- 注意，只会在本地生效，在服务器端不会生效。  
---@param msg string
function Debug.ShowHint(msg) end

return Debug
