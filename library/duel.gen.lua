---@meta

---@class Duel
local Duel = {}

-- ●void Duel.EnableGlobalFlag(int global_flag)  
-- 设置全局标记global_flag  
---@param global_flag integer
function Duel.EnableGlobalFlag(global_flag) end

-- ●int Duel.GetLP(int player)  
-- 返回玩家player的当前LP  
---@param player integer
---@return integer
function Duel.GetLP(player) end

-- ●void Duel.SetLP(int player, int lp)  
-- 设置玩家player的当前LP为lp  
---@param player integer
---@param lp integer
function Duel.SetLP(player, lp) end

-- ●int Duel.GetTurnPlayer()  
-- 返回当前的回合玩家  
---@return integer
function Duel.GetTurnPlayer() end

-- ●int Duel.GetTurnCount([int player])  
-- 返回[player所经过的]当前的回合数  
---@param player? integer
---@return integer
function Duel.GetTurnCount(player) end

-- ●int Duel.GetDrawCount(int player)  
-- 返回玩家player每回合的规则抽卡数量  
---@param player integer
---@return integer
function Duel.GetDrawCount(player) end

-- ●void Duel.RegisterEffect(Effect e, int player)  
-- 把效果e作为玩家player的效果注册给全局环境  
---@param e Effect
---@param player integer
function Duel.RegisterEffect(e, player) end

-- ●Effect Duel.RegisterFlagEffect(int player, int code, int reset_flag, int property, int reset_count=1[, int label])  
-- 为玩家player注册全局环境下的标识效果，并返回这个效果  
-- 此效果总是影响玩家的(EFFECT_FLAG_PLAYER_TARGET)并且不会被无效化  
-- 其余部分与Card.RegisterFlagEffect相同  
---@param player integer
---@param code integer
---@param reset_flag integer
---@param property integer
---@param reset_count integer 1
---@param label? integer
---@return Effect
function Duel.RegisterFlagEffect(player, code, reset_flag, property, reset_count, label) end

-- ●int Duel.GetFlagEffect(int player, int code)  
-- 返回玩家 player 的 code 标识效果的数量  
---@param player integer
---@param code integer
---@return integer
function Duel.GetFlagEffect(player, code) end

-- ●void Duel.ResetFlagEffect(int player, int code)  
-- 手动reset玩家player的 code 标识效果  
---@param player integer
---@param code integer
function Duel.ResetFlagEffect(player, code) end

-- ●void Duel.ResetTimeLimit(int player[, int time=0])  
-- 重新设置玩家player的当前回合时间。可选参数time（秒），范围必须在0到0x7fff之间  
---@param player integer
---@param time? integer 0
function Duel.ResetTimeLimit(player, time) end

-- ●void Duel.SetSummonCancelable(bool enabled)  
-- 设置召唤·特殊召唤是否可以被取消  
---@param enabled boolean
function Duel.SetSummonCancelable(enabled) end

-- ●bool Duel.SetFlagEffectLabel(int player, int code, int label)  
-- 返回player是否存在种类为code的标识效果，并设置其Label属性为label  
---@param player integer
---@param code integer
---@param label integer
---@return boolean
function Duel.SetFlagEffectLabel(player, code, label) end

-- ●int Duel.GetFlagEffectLabel(int player, int code)  
-- 返回玩家player的种类为code的标识效果的Label，没有此效果则返回nil  
---@param player integer
---@param code integer
---@return integer
function Duel.GetFlagEffectLabel(player, code) end

-- ●int Duel.Destroy(Card|Group targets, int reason[ ,int dest = LOCATION_GRAVE])  
-- 以reason原因破坏targets去dest，返回值是实际被破坏的数量  
-- 如果reason包含REASON_RULE，则破坏事件将不会检查卡片是否免疫效果，  
-- 不会触发代破效果并且无视“不能破坏”  
---@param targets Card | Group
---@param reason integer
---@param dest? integer LOCATION_GRAVE
---@return integer
function Duel.Destroy(targets, reason, dest) end

-- ●int Duel.Remove(Card|Group targets, int pos, int reason)  
-- 以reason原因，pos表示形式除外targets，返回值是实际被操作的数量  
-- 如果reason包含REASON_TEMPORARY，那么视为是暂时除外，可以通过Duel.ReturnToField返回到场上  
---@param targets Card | Group
---@param pos integer
---@param reason integer
---@return integer
function Duel.Remove(targets, pos, reason) end

-- ●int Duel.SendtoGrave(Card|Group targets, int reason)  
-- 以reason原因把targets送去墓地，返回值是实际被操作的数量  
---@param targets Card | Group
---@param reason integer
---@return integer
function Duel.SendtoGrave(targets, reason) end

-- ●int Duel.SendtoDeck(Card|Group targets, int player|nil, int seq, int reason)  
-- 以reason原因把targets送去玩家player的卡组，返回值是实际被操作的数量  
-- 如果player是nil则返回卡的持有者的卡组  
-- 如果seq=0，则是返回卡组最顶端；seq=1则是返回卡组最底端；  
-- 其余情况则是返回最顶端并且标记需要洗卡组  
---@param targets Card | Group
---@param player? integer
---@param seq integer
---@param reason integer
---@return integer
function Duel.SendtoDeck(targets, player, seq, reason) end

-- ●int Duel.SendtoExtraP(Card|Group targets, int player|nil, int reason)  
-- 以reason原因把灵摆卡targets表侧表示送去玩家player的额外卡组，返回值是实际被操作的数量  
-- 如果player是nil则返回卡的持有者的额外卡组  
---@param targets Card | Group
---@param player? integer
---@param reason integer
---@return integer
function Duel.SendtoExtraP(targets, player, reason) end

-- ●Group Duel.GetOperatedGroup()  
-- 此函数返回之前一次卡片操作实际操作的卡片组。包括  
-- Duel.Destroy, Duel.Remove, Duel.SendtoGrave,  
-- Duel.SendtoHand, Duel.SendtoDeck, Duel.SendtoExtraP, Duel.Release,  
-- Duel.ChangePosition, Duel.SpecialSummon, Duel.DiscardDeck  
---@return Group
function Duel.GetOperatedGroup() end

-- ●void Duel.Summon(int player, Card c, bool ignore_count, Effect e|nil[, int min=0, int zone=0x1f])  
-- 让玩家 player 以效果e对c[在区域 zone]进行通常召唤(非set)，至少使用min个祭品  
-- 如果e=nil,那么就按照一般的通常召唤规则进行通常召唤  
-- 如果ignore_count=true，则忽略每回合的通常召唤次数限制  
---@param player integer
---@param c Card
---@param ignore_count boolean
---@param e? Effect
---@param min? integer 0
---@param zone? integer 0x1f
function Duel.Summon(player, c, ignore_count, e, min, zone) end

-- ●void Duel.SpecialSummonRule(int player, Card c[, int sumtype=0])  
-- 让玩家player对c[用 sumtype 方式]进行特殊召唤手续（？）  
---@param player integer
---@param c Card
---@param sumtype? integer 0
function Duel.SpecialSummonRule(player, c, sumtype) end

-- ●void Duel.SynchroSummon(int player, Card c, Card tuner|nil[, Group mg|nil])  
-- 让玩家player以tuner作为调整,场上的卡[或mg]为素材，对c进行同调召唤手续  
---@param player integer
---@param c Card
---@param tuner? Card
---@param mg? Group
function Duel.SynchroSummon(player, c, tuner, mg) end

-- ●void Duel.XyzSummon(int player, Card c, Group mg|nil[, min=0, max=0])  
-- 让玩家player用场上的卡[或mg][选min-max个素材]对c进行XYZ召唤手续  
-- mg非空且min为0则直接把mg全部作为XYZ素材  
---@param player integer
---@param c Card
---@param mg? Group
---@param min? any 0
---@param max? any 0
function Duel.XyzSummon(player, c, mg, min, max) end

-- ●void Duel.MSet(int player, Card c, bool ignore_count, Effect e|nil[,int min=0, int zone=0x1f])  
-- 让玩家 player 以效果e对c[在区域 zone]进行通常召唤的Set，至少使用min个祭品  
-- 如果e=nil,那么就按照一般的通常召唤规则进行通常召唤  
-- 如果ignore_count=true，则忽略每回合的通常召唤次数限制  
---@param player integer
---@param c Card
---@param ignore_count boolean
---@param e? Effect
---@param min? integer 0
---@param zone? integer 0x1f
function Duel.MSet(player, c, ignore_count, e, min, zone) end

-- ●void|int Duel.SSet(int player, Card|Group targets[, int target_player=player, bool confirm=true])  
-- 让玩家player把targets盖放到target_player的魔法陷阱区， confirm 表示是否需要确认  
-- 若targets为Group，则返回成功操作的数量  
---@param player integer
---@param targets Card | Group
---@param target_player? integer player
---@param confirm? boolean true
---@return integer
function Duel.SSet(player, targets, target_player, confirm) end

-- ●bool|Card Duel.CreateToken(int player, int code)  
-- 根据code新建一个衍生物并返回，该衍生物的拥有者为player，如果 player 不是 0或者1，则返回false  
---@param player integer
---@param code integer
---@return boolean | Card
function Duel.CreateToken(player, code) end

-- ●int Duel.SpecialSummon(Card|Group targets, int sumtype, int sumplayer, int target_player, bool nocheck, bool nolimit, int pos[, int zone=0xff])  
-- 让玩家 sumplayer 以sumtype方式，pos表示形式把targets特殊召唤到target_player场上[的区域 zone]  
-- 如果nocheck为true则无视卡的召唤条件，如果nolimit为true则无视卡的苏生限制  
-- 返回值是特殊召唤成功的卡的数量  
---@param targets Card | Group
---@param sumtype integer
---@param sumplayer integer
---@param target_player integer
---@param nocheck boolean
---@param nolimit boolean
---@param pos integer
---@param zone? integer 0xff
---@return integer
function Duel.SpecialSummon(targets, sumtype, sumplayer, target_player, nocheck, nolimit, pos, zone) end

-- ●bool Duel.SpecialSummonStep(Card c, int sumtype, int sumplayer, int target_player, bool nocheck, bool nolimit, int pos[, int zone=0xff])  
-- 此函数是Duel.SpecialSummon的分解过程，只特殊召唤一张卡c ，其他参数用法和 Duel.SpecialSummon 一样  
-- 此函数用于一个效果同时特殊召唤多张参数不同的卡  
-- 此函数必须和Duel.SpecialSummonComplete一起使用  
-- 返回值表示是否特殊召唤成功  
---@param c Card
---@param sumtype integer
---@param sumplayer integer
---@param target_player integer
---@param nocheck boolean
---@param nolimit boolean
---@param pos integer
---@param zone? integer 0xff
---@return boolean
function Duel.SpecialSummonStep(c, sumtype, sumplayer, target_player, nocheck, nolimit, pos, zone) end

-- ●void|int Duel.SpecialSummonComplete()  
-- 此函数在确定复数个Duel.SpecialSummonStep调用完毕之后调用，用于触发事件  
---@return integer
function Duel.SpecialSummonComplete() end

-- ●bool Duel.IsCanAddCounter(int player, int countertype, int count, Card c)  
-- 检查玩家player能否向卡片c添加count个countertype类型的指示物，如果 player 不是 0或者1，则返回false  
---@param player integer
---@param countertype integer
---@param count integer
---@param c Card
---@return boolean
function Duel.IsCanAddCounter(player, countertype, count, c) end

-- ●bool Duel.RemoveCounter(int player, int s, int o, int countertype, int count, int reason)  
-- 让玩家player以reason为原因移除场上存在的countertype类型的count个指示物，返回值表示是否成功  
-- s表示对player来说的己方的可移除指示物的位置，o表示对player来说的对方的可移除指示物的位置  
---@param player integer
---@param s integer
---@param o integer
---@param countertype integer
---@param count integer
---@param reason integer
---@return boolean
function Duel.RemoveCounter(player, s, o, countertype, count, reason) end

-- ●bool Duel.IsCanRemoveCounter(int player, int s, int o, int countertype, int count, int reason)  
-- 检查玩家player以reason为原因是否能移除场上的countertype类型的count个指示物  
-- s表示对player来说的己方的可移除指示物的位置，o表示对player来说的对方的可移除指示物的位置  
---@param player integer
---@param s integer
---@param o integer
---@param countertype integer
---@param count integer
---@param reason integer
---@return boolean
function Duel.IsCanRemoveCounter(player, s, o, countertype, count, reason) end

-- ●int Duel.GetCounter(int player, int s, int o, int countertype)  
-- 返回场上存在的countertype类型的指示物的数量  
-- s表示对player来说的己方的可移除指示物的位置，o表示对player来说的对方的可移除指示物的位置  
---@param player integer
---@param s integer
---@param o integer
---@param countertype integer
---@return integer
function Duel.GetCounter(player, s, o, countertype) end

-- ●int Duel.ChangePosition(Card|Group targets, int au[, int ad=au, int du=au, int dd=au, bool noflip=false, bool setavailable=false])  
-- 改变targets的表示形式返回实际操作的数量，若只有2个参数，则不管什么表示形式，都变成 第二个参数 代表的形式  
-- 表侧攻击表示 = au  
-- 里侧攻击表示 = ad  
-- 表侧守备表示 = du  
-- 里侧守备表示 = dd  
-- 如果noflip=true则不触发反转效果（但会触发反转时的诱发效果）  
-- 如果setavailable=true则对象之后变成里侧也发动反转效果  
---@param targets Card | Group
---@param au integer
---@param ad? integer au
---@param du? integer au
---@param dd? integer au
---@param noflip? boolean false
---@param setavailable? boolean false
---@return integer
function Duel.ChangePosition(targets, au, ad, du, dd, noflip, setavailable) end

-- ●int Duel.Release(Card|Group targets, int reason)  
-- 以reason原因解放targets ，返回值是实际解放的数量  
-- 如果reason含有REASON_COST，则不会检查卡片是否不受效果影响  
---@param targets Card | Group
---@param reason integer
---@return integer
function Duel.Release(targets, reason) end

-- ●bool Duel.MoveToField(Card c, int move_player, int target_player, int dest, int pos, bool enable)  
-- 让玩家move_player把c移动的target_player的场上，返回值表示是否成功  
-- dest只能是LOCATION_MZONE或者LOCATION_SZONE，pos表示可选表示形式， enable 表示是否立刻适用c的效果  
---@param c Card
---@param move_player integer
---@param target_player integer
---@param dest integer
---@param pos integer
---@param enable boolean
---@return boolean
function Duel.MoveToField(c, move_player, target_player, dest, pos, enable) end

-- ●bool Duel.ReturnToField(Card c[, int pos, int zone=0xff])  
-- 把c以表示形式pos返回到场上[的区域 zone]，pos默认值是离场前的表示形式，返回值表示是否成功  
-- c必须是以REASON_TEMPORARY原因离场，并且离场后没有离开过那个位置  
---@param c Card
---@param pos? integer
---@param zone? integer 0xff
---@return boolean
function Duel.ReturnToField(c, pos, zone) end

-- ●void Duel.MoveSequence(Card c, int seq)  
-- 移动c的序号，通常用于在场上换格子或者在卡组中移动到最上方或者最下方  
---@param c Card
---@param seq integer
function Duel.MoveSequence(c, seq) end

-- ●void Duel.SwapSequence(Card c1, Card c2)  
-- 交换c1和c2的位置  
---@param c1 Card
---@param c2 Card
function Duel.SwapSequence(c1, c2) end

-- ●void Duel.Activate(Effect e)  
-- 发动效果e（？）  
---@param e Effect
function Duel.Activate(e) end

-- ●void Duel.SetChainLimit(function f)  
-- 设定连锁条件，f的函数原型为 bool f(e,ep,tp)  
-- e表示要限制连锁的效果，ep表示要限制连锁的玩家，tp表示发动该效果的玩家  
-- 在cost或者target处理中调用此函数可以限制可以连锁的效果的种类（如超融合）  
-- 如果f返回false表示不能连锁，一旦设置连锁条件后发生了新的连锁那么连锁条件将会解除  
---@param f function
function Duel.SetChainLimit(f) end

-- ●void Duel.SetChainLimitTillChainEnd(function f)  
-- 功能同Duel.SetChainLimit，但是此函数设定的连锁条件直到连锁结束才会解除  
---@param f function
function Duel.SetChainLimitTillChainEnd(f) end

-- ●Effect Duel.GetChainMaterial(int player)  
-- 返回玩家player受到的连锁素材的效果，此函数仅用于融合类卡的效果  
---@param player integer
---@return Effect
function Duel.GetChainMaterial(player) end

-- ●void Duel.ConfirmDecktop(int player, int count)  
-- 确认玩家player卡组最上方count张卡  
---@param player integer
---@param count integer
function Duel.ConfirmDecktop(player, count) end

-- ●void Duel.ConfirmExtratop(int player, int count)  
-- 确认玩家player额外卡组里侧的卡 最上方count张卡  
---@param player integer
---@param count integer
function Duel.ConfirmExtratop(player, count) end

-- ●void Duel.SortDecktop(int sort_player, int target_player, int count)  
-- 让玩家sort_player对玩家target_player的卡组最上方count张卡进行排序，最先选的卡在最上面，然后下面是第二张选择的卡，以此类推  
-- 最多只能排序16张卡  
---@param sort_player integer
---@param target_player integer
---@param count integer
function Duel.SortDecktop(sort_player, target_player, count) end

-- ●bool[,Group,int,int,Effect,int,int] Duel.CheckEvent(int event[, bool get_info])  
-- 检查当前是否是event时点  
-- 若get_info=true并且是正确的时点，则还返回触发时点的信息 eg,ep,ev,re,r,rp  
---@param event integer
---@param get_info? boolean
---@return boolean
---@return Group | nil
---@return integer | nil
---@return integer | nil
---@return Effect | nil
---@return integer | nil
---@return integer | nil
function Duel.CheckEvent(event, get_info) end

-- ●void Duel.RaiseEvent(Group|Card eg, int code, Effect re, int r, int rp, int ep, int ev)  
-- 以eg,ep,ev,re,r,rp触发一个时点 code  
---@param eg Group | Card
---@param code integer
---@param re Effect
---@param r integer
---@param rp integer
---@param ep integer
---@param ev integer
function Duel.RaiseEvent(eg, code, re, r, rp, ep, ev) end

-- ●void Duel.RaiseSingleEvent(Card eg, int code, Effect re, int r, int rp, int ep, int ev)  
-- 以eg,ep,ev,re,r,rp为卡片ec触发一个单体时点 code  
---@param eg Card
---@param code integer
---@param re Effect
---@param r integer
---@param rp integer
---@param ep integer
---@param ev integer
function Duel.RaiseSingleEvent(eg, code, re, r, rp, ep, ev) end

-- ●bool Duel.CheckTiming(int timing)  
-- 检查当前是否是timing提示时点  
-- TIMING_DRAW_PHASE			=0x1			--抽卡阶段时点  
-- TIMING_STANDBY_PHASE		=0x2        	--准备阶段时点  
-- TIMING_MAIN_END				=0x4        	--主要阶段结束时点  
-- TIMING_BATTLE_START			=0x8        	--战斗阶段开始时点  
-- TIMING_BATTLE_END			=0x10       	--战斗阶段结束时点  
-- TIMING_END_PHASE			=0x20       	--结束阶段时点  
-- TIMING_SUMMON				=0x40       	--召唤时点  
-- TIMING_SPSUMMON				=0x80       	--特殊召唤时点  
-- TIMING_FLIPSUMMON			=0x100      	--翻转召唤时点  
-- TIMING_MSET					=0x200			--放置怪兽时点  
-- TIMING_SSET					=0x400      	--放置魔陷时点  
-- TIMING_POS_CHANGE			=0x800      	--表示形式变更时点  
-- TIMING_ATTACK				=0x1000     	--攻击宣言时点  
-- TIMING_DAMAGE_STEP			=0x2000     	--伤害步骤时点  
-- TIMING_DAMAGE_CAL			=0x4000     	--伤害计算时点  
-- TIMING_CHAIN_END			=0x8000     	--连锁结束时点  
-- TIMING_DRAW					=0x10000    	--抽卡时点（不是抽卡阶段  
-- TIMING_DAMAGE				=0x20000    	--造成伤害时点  
-- TIMING_RECOVER				=0x40000		--回复时点  
-- TIMING_DESTROY				=0x80000    	--破坏时点  
-- TIMING_REMOVE				=0x100000   	--除外时点  
-- TIMING_TOHAND				=0x200000   	--加入手卡时点（检索、回收等）  
-- TIMING_TODECK				=0x400000   	--回卡组时点  
-- TIMING_TOGRAVE				=0x800000   	--进墓地时点  
-- TIMING_BATTLE_PHASE			=0x1000000  	--战斗阶段时点  
-- TIMING_EQUIP				=0x2000000  	--装备时点  
-- TIMING_BATTLE_STEP_END		=0x4000000  	--戰鬥步驟結束時  
---@param timing integer
---@return boolean
function Duel.CheckTiming(timing) end

-- ●int,int Duel.GetEnvironment()  
-- 返回两个值，表示当前场地代号，以及当前场地效果的来源玩家  
-- 场地代号指当前生效的场地卡的代号，或者海神的巫女等卡把场地变化效果的值  
-- 来源玩家指当前生效的场地卡的控制者，或者海神的巫女等卡的控制者  
---@return integer
---@return integer
function Duel.GetEnvironment() end

-- ●bool Duel.IsEnvironment(int code[, int player=PLAYER_ALL, int loc = LOCATION_FZONE + LOCATION_ONFIELD])  
-- 检查场地代号是否是code [，来源玩家是否是 player][，生效区域是否在 loc 内]  
-- 场地代号指当前生效的场地卡的代号，或者海神的巫女把场地变化效果的值  
-- 来源玩家指当前生效的场地卡的控制者，或者海神的巫女等卡的控制者  
---@param code integer
---@param player? integer PLAYER_ALL
---@param loc? integer LOCATION_FZONE + LOCATION_ONFIELD
---@return boolean
function Duel.IsEnvironment(code, player, loc) end

-- ●void Duel.Win(int player, int win_reason)  
-- 当前效果处理完令player以win_reason决斗胜利  
---@param player integer
---@param win_reason integer
function Duel.Win(player, win_reason) end

-- ●int Duel.Draw(int player, int count, int reason)  
-- 让玩家player以原因reason抽count张卡，返回实际抽的卡的数量  
-- 如果reason含有REASON_RULE则此次抽卡不受“不能抽卡”的效果的影响  
---@param player integer
---@param count integer
---@param reason integer
---@return integer
function Duel.Draw(player, count, reason) end

-- ●int Duel.Damage(int player, int value, int reason[, bool is_step=false])  
-- 以reason原因给与玩家player造成value的伤害，返回实际收到的伤害值  
-- 如果受到伤害变成回复等效果的影响时，返回值为0.  
-- is_step为true则是伤害/恢复LP过程的分解，需要调用Duel.RDComplete()触发时点  
---@param player integer
---@param value integer
---@param reason integer
---@param is_step? boolean false
---@return integer
function Duel.Damage(player, value, reason, is_step) end

-- ●int Duel.Recover(int player, int value, int reason[, bool is_step=false])  
-- 以reason原因使玩家player回复value的LP，返回实际的回复值  
-- 如果受到回复变成伤害等效果的影响时，返回值为0.  
-- is_step为true则是伤害/恢复LP过程的分解，需要调用Duel.RDComplete()触发时点  
---@param player integer
---@param value integer
---@param reason integer
---@param is_step? boolean false
---@return integer
function Duel.Recover(player, value, reason, is_step) end

-- ●void Duel.RDComplete()  
-- 在调用Duel.Damage/Duel.Recover时，若is_step参数为true，则需调用此函数触发时点  
function Duel.RDComplete() end

-- ●bool Duel.Equip(int player, Card c1, Card c2[, bool up=true, bool is_step=false])  
-- 把c1作为玩家player的装备卡装备给c2，返回值表示是否成功  
-- up=false则保持装备卡之前的表示形式  
-- is_step=true则是装备过程的分解，需要配合Duel.EquipComplete使用  
---@param player integer
---@param c1 Card
---@param c2 Card
---@param up? boolean true
---@param is_step? boolean false
---@return boolean
function Duel.Equip(player, c1, c2, up, is_step) end

-- ●void Duel.EquipComplete()  
-- 在调用Duel.Equip时，若is_step参数为true，则需调用此函数触发时点  
function Duel.EquipComplete() end

-- ●bool Duel.GetControl(Card|Group targets, int player[, int reset_phase=0, int reset_count=0, int zone=0xff])  
-- 让玩家 player [直到 reset_count 次 reset_phase 时][在区域 zone]得到 targets 的控制权，返回值表示是否成功  
-- reset_phase ,reset_count 若要使用，必须都用  
-- PHASE_DRAW			=0x01	--抽卡阶段  
-- PHASE_STANDBY		=0x02	--准备阶段  
-- PHASE_MAIN1			=0x04	--主要阶段1  
-- PHASE_BATTLE_START	=0x08	--战斗阶段开始  
-- PHASE_BATTLE_STEP	=0x10	--战斗步驟  
-- PHASE_DAMAGE		=0x20	--伤害步驟  
-- PHASE_DAMAGE_CAL	=0x40	--伤害计算时  
-- PHASE_BATTLE		=0x80	--战斗阶段結束  
-- PHASE_MAIN2			=0x100	--主要阶段2  
-- PHASE_END			=0x200	--结束阶段  
---@param targets Card | Group
---@param player integer
---@param reset_phase? integer 0
---@param reset_count? integer 0
---@param zone? integer 0xff
---@return boolean
function Duel.GetControl(targets, player, reset_phase, reset_count, zone) end

-- ●bool Duel.SwapControl(Card|Group targets1, Card|Group targets2[, int reset_phase=0, int reset_count=0])  
-- 交换targets1与targets2的控制权，返回值表示是否成功  
-- 第三个第四个参数同 Duel.GetControl  
---@param targets1 Card | Group
---@param targets2 Card | Group
---@param reset_phase? integer 0
---@param reset_count? integer 0
---@return boolean
function Duel.SwapControl(targets1, targets2, reset_phase, reset_count) end

-- ●bool Duel.CheckLPCost(int player, int cost)  
-- 检查玩家player是否能支付cost点lp  
---@param player integer
---@param cost integer
---@return boolean
function Duel.CheckLPCost(player, cost) end

-- ●void Duel.PayLPCost(int player, int cost)  
-- 让玩家player支付cost点lp  
---@param player integer
---@param cost integer
function Duel.PayLPCost(player, cost) end

-- ●int Duel.DiscardDeck(int player, int count, int reason)  
-- 以原因reason把玩家player的卡组最上端count张卡送去墓地，返回实际转移的数量  
---@param player integer
---@param count integer
---@param reason integer
---@return integer
function Duel.DiscardDeck(player, count, reason) end

-- ●int Duel.DiscardHand(int player, function f, int min, int max, int reason, Card|Group ex|nil, ...)  
-- 过滤函数让玩家player选择并以reason原因丢弃满足筛选条件f兵不等于ex的min-max张手卡  
-- 第7个参数开始为额外参数  
---@param player integer
---@param f function
---@param min integer
---@param max integer
---@param reason integer
---@param ex? Card | Group
---@param ... any
---@return integer
function Duel.DiscardHand(player, f, min, max, reason, ex, ...) end

-- ●void Duel.DisableShuffleCheck([bool disable=true])  
-- 使下一个操作不检查是否需要洗切卡组或手卡  
-- 注：如果不调用此函数，  
-- 除了调用Duel.DiscardDeck和Duel.Draw之外从卡组中取出卡或者把卡加入手卡  
-- 或者把卡加入卡组（非最上端或最底端）时，系统会自动在效果处理结束时洗切卡组或手卡  
-- 如果不希望如此，比如从卡组顶端除外一张卡等操作，那么需要调用此函数  
-- 此函数仅保证紧接着的一次操作不会进行洗卡检测  
---@param disable? boolean true
function Duel.DisableShuffleCheck(disable) end

-- ●void Duel.ShuffleDeck(int player)  
-- 手动洗切玩家player的卡组  
-- 注：会重置洗卡检测的状态  
---@param player integer
function Duel.ShuffleDeck(player) end

-- ●void Duel.ShuffleExtra(int player)  
-- 手动洗切玩家player的额外卡组  
---@param player integer
function Duel.ShuffleExtra(player) end

-- ●void Duel.ShuffleHand(int player)  
-- 手动洗切玩家player的手卡  
-- 注：会重置洗卡检测的状态  
---@param player integer
function Duel.ShuffleHand(player) end

-- ●void Duel.ShuffleSetCard(Group g)  
-- 洗切覆盖的卡片组 g （实例：魔术礼帽），若g中有表侧表示的卡，则此函数无效  
-- 此函数现在可以洗切魔陷区的覆盖卡  
---@param g Group
function Duel.ShuffleSetCard(g) end

-- ●void Duel.ChangeAttacker(Card c[, bool ignore_count=false])  
-- 将攻击怪兽变为c  
-- 若 ignore_count=true 则原来的攻击怪兽不视为攻击过  
---@param c Card
---@param ignore_count? boolean false
function Duel.ChangeAttacker(c, ignore_count) end

-- ●bool Duel.ChangeAttackTarget(Card c|nil)  
-- 将攻击对象变为c，c为nil表示直接攻击，返回值表示是否成功转移攻击对象  
---@param c? Card
---@return boolean
function Duel.ChangeAttackTarget(c) end

-- ●void Duel.CalculateDamage(Card c1, Card c2[, bool new_attack=false])  
-- 令c1与c2进行战斗伤害计算（c1 攻击 c2）  
-- 若 new_attack=true 则视为 攻击的卡进行过攻击宣言（？）  
---@param c1 Card
---@param c2 Card
---@param new_attack? boolean false
function Duel.CalculateDamage(c1, c2, new_attack) end

-- ●int Duel.GetBattleDamage(int player)  
-- 返回玩家player在本次战斗中受到的伤害  
---@param player integer
---@return integer
function Duel.GetBattleDamage(player) end

-- ●void Duel.ChangeBattleDamage(int player, int value[, bool check=true])  
-- 把玩家player在本次战斗中受到的伤害变成value，若 check=false 则原本战斗伤害就算为0也改变伤害  
---@param player integer
---@param value integer
---@param check? boolean true
function Duel.ChangeBattleDamage(player, value, check) end

-- ●void Duel.ChangeTargetCard(int chainc, Group g)  
-- 把连锁chainc的对象换成g  
---@param chainc integer
---@param g Group
function Duel.ChangeTargetCard(chainc, g) end

-- ●void Duel.ChangeTargetPlayer(int chainc, int player)  
-- 把连锁chainc的对象玩家换成player  
---@param chainc integer
---@param player integer
function Duel.ChangeTargetPlayer(chainc, player) end

-- ●void Duel.ChangeTargetParam(int chainc, int param)  
-- 把连锁chainc的参数换成param  
---@param chainc integer
---@param param integer
function Duel.ChangeTargetParam(chainc, param) end

-- ●void Duel.BreakEffect()  
-- 中断当前效果，使之后的效果处理视为不同时处理，此函数会造成错时点  
function Duel.BreakEffect() end

-- ●void Duel.ChangeChainOperation(int chainc, function f)  
-- 把连锁chainc的效果的处理函数换成f，用于实现“把效果变成”等的效果  
-- f(e,tp,eg,ep,ev,re,r,rp)  
---@param chainc integer
---@param f function
function Duel.ChangeChainOperation(chainc, f) end

-- ●bool Duel.NegateActivation(int chainc)  
-- 使连锁chainc的发动无效，返回值表示是否成功  
---@param chainc integer
---@return boolean
function Duel.NegateActivation(chainc) end

-- ●bool Duel.NegateEffect(int chainc)  
-- 使连锁chainc的效果无效，返回值表示是否成功  
---@param chainc integer
---@return boolean
function Duel.NegateEffect(chainc) end

-- ●void Duel.NegateRelatedChain(Card c, int reset)  
-- 使和卡片c有关的连锁都无效化，发生reset事件则重置,reset 默认包含 RESET_CHAIN  
---@param c Card
---@param reset integer
function Duel.NegateRelatedChain(c, reset) end

-- ●void Duel.NegateSummon(Card|Group targets)  
-- 使正在召唤·反转召唤·特殊召唤的targets的召唤无效  
---@param targets Card | Group
function Duel.NegateSummon(targets) end

-- ●void Duel.IncreaseSummonedCount([Card c])  
-- 手动增加1次玩家[对于卡片c]的已经通常召唤过的次数  
---@param c? Card
function Duel.IncreaseSummonedCount(c) end

-- ●bool Duel.CheckSummonedCount([Card c])  
-- 检查回合玩家本回合是否还能通常召唤[卡片c]  
---@param c? Card
---@return boolean
function Duel.CheckSummonedCount(c) end

-- ●int Duel.GetLocationCount(int player, int location[, int use_player, int reason = LOCATION_REASON_TOFIELD, int zone=0xff])  
-- 返回玩家player的场上location可用的[区域 zone 里的]空格数  
-- location只能是LOCATION_MZONE或者LOCATION_SZONE  
-- reason为LOCATION_REASON_TOFIELD或LOCATION_REASON_CONTROL  
---@param player integer
---@param location integer
---@param use_player? integer
---@param reason? integer LOCATION_REASON_TOFIELD
---@param zone? integer 0xff
---@return integer
function Duel.GetLocationCount(player, location, use_player, reason, zone) end

-- ●int Duel.GetMZoneCount(int player[, Group|Card targets, int use_player, int reason = LOCATION_REASON_TOFIELD, int zone=0xff])  
-- 返回玩家player场上[targets 离开后]可用的[区域 zone 里的]怪兽区数量  
---@param player integer
---@param targets? Group | Card
---@param use_player? integer
---@param reason? integer LOCATION_REASON_TOFIELD
---@param zone? integer 0xff
---@return integer
function Duel.GetMZoneCount(player, targets, use_player, reason, zone) end

-- ●int Duel.GetLocationCountFromEx(int player[, int reason_player=player, Group|Card targets|nil, Card sc, int zone=0xff])  
-- 返回玩家player场上[假如因玩家 reason_player 的原因让 targets 离场后，把卡片 sc 在 zone 区域特殊召唤]可用的 能让额外卡组的怪兽 出场的空格数  
---@param player integer
---@param reason_player? integer player
---@param targets? Group | Card
---@param sc? Card
---@param zone? integer 0xff
---@return integer
function Duel.GetLocationCountFromEx(player, reason_player, targets, sc, zone) end

-- ●int Duel.GetUsableMZoneCount(int player[, int use_player])  
-- 返回玩家player场上[对于 use_player 来说]可用的怪兽区数量（？）  
---@param player integer
---@param use_player? integer
---@return integer
function Duel.GetUsableMZoneCount(player, use_player) end

-- ●Group Duel.GetLinkedGroup(int player, int s_range, int o_range)  
-- 返回以玩家player来看的 s_range 和 o_range 区域的处于连接状态的卡片组[其实只要后面2个参数不为0就行，只要不为0，都会变成LOCATION_MZONE]（？）  
---@param player integer
---@param s_range integer
---@param o_range integer
---@return Group
function Duel.GetLinkedGroup(player, s_range, o_range) end

-- ●int Duel.GetLinkedGroupCount(int player, int s_range, int o_range)  
-- 返回以玩家player来看的 s_range 和 o_range 区域的处于连接状态的卡片的数量（？）  
---@param player integer
---@param s_range integer
---@param o_range integer
---@return integer
function Duel.GetLinkedGroupCount(player, s_range, o_range) end

-- ●int Duel.GetLinkedZone(int player)  
-- 返回以玩家player来看的所有连接区域  
---@param player integer
---@return integer
function Duel.GetLinkedZone(player) end

-- ●Card Duel.GetFieldCard(int player, int location, int seq)  
-- 返回玩家player的场上位于location序号为seq的卡，常用于获得场地区域·灵摆区域的卡  
-- 注：召唤·反转召唤·特殊召唤 之际 的卡无法获取  
---@param player integer
---@param location integer
---@param seq integer
---@return Card
function Duel.GetFieldCard(player, location, seq) end

-- ●bool Duel.CheckLocation(int player, int location, int seq)  
-- 检查玩家player的场上位于location序号为seq的空格是否可用  
---@param player integer
---@param location integer
---@param seq integer
---@return boolean
function Duel.CheckLocation(player, location, seq) end

-- ●int Duel.GetCurrentChain()  
-- 返回当前正在处理的连锁序号  
---@return integer
function Duel.GetCurrentChain() end

-- ●... Duel.GetChainInfo(int chainc, ...)  
-- 返回连锁chainc的信息，如果chainc=0，则返回当前正在处理的连锁的信息  
-- 此函数根据传入的参数个数按顺序返回相应数量的返回值参数可以是:  
-- CHAININFO_CHAIN_COUNT               连锁序号  
-- CHAININFO_TRIGGERING_EFFECT         连锁的效果  
-- CHAININFO_TRIGGERING_PLAYER         连锁的玩家  
-- CHAININFO_TRIGGERING_CONTROLER      连锁发生位置所属玩家  
-- CHAININFO_TRIGGERING_LOCATION       连锁发生位置  
-- CHAININFO_TRIGGERING_SEQUENCE       连锁发生的位置的序号  
-- CHAININFO_TARGET_CARDS              连锁的对象卡片组  
-- CHAININFO_TARGET_PLAYER             连锁的对象玩家  
-- CHAININFO_TARGET_PARAM              连锁的对象参数  
-- CHAININFO_DISABLE_REASON            连锁被无效的原因效果  
-- CHAININFO_DISABLE_PLAYER            连锁被无效的原因玩家  
-- CHAININFO_CHAIN_ID                  连锁的唯一标识  
-- CHAININFO_TYPE                      连锁卡片的类型（怪兽·魔法·陷阱）  
-- CHAININFO_EXTTYPE                   连锁卡片的具体类型（例如同调怪兽·永续魔法·反击陷阱）  
-- 举例：  
-- Duel.GetChainInfo(0,CHAININFO_TRIGGERING_LOCATION,CHAININFO_TARGET_CARDS)  
-- 将会返回当前连锁发生的位置和对象卡  
---@param chainc integer
---@param ... any
---@return ...
function Duel.GetChainInfo(chainc, ...) end

-- ●Group,int,int,Effect,int,int Duel.GetChainEvent(int chainc)  
-- 返回连锁 chainc 的相关参数，如果 chainc=0，则返回当前正在处理的连锁的相关参数  
-- 返回6个参数，eg,ep,ev,re,r,rp  
---@param chainc integer
---@return Group
---@return integer
---@return integer
---@return Effect
---@return integer
---@return integer
function Duel.GetChainEvent(chainc) end

-- ●Card,... Duel.GetFirstTarget()  
-- 返回当前连锁的所有的对象卡，一般只有一个对象时使用  
---@return Card
---@return ...
function Duel.GetFirstTarget() end

-- ●int Duel.GetCurrentPhase()  
-- 返回当前的阶段  
---@return integer
function Duel.GetCurrentPhase() end

-- ●void Duel.SkipPhase(int player, int phase, int reset_flag, int reset_count[, int value])  
-- 跳过玩家player的phase阶段，并在特定的阶段后reset，reset参数和效果相同  
---@param player integer
---@param phase integer
---@param reset_flag integer
---@param reset_count integer
---@param value? integer
function Duel.SkipPhase(player, phase, reset_flag, reset_count, value) end

-- ●bool Duel.IsDamageCalculated()  
-- 用于在伤害阶段检查是否已经计算了战斗伤害  
---@return boolean
function Duel.IsDamageCalculated() end

-- ●Card Duel.GetAttacker()  
-- 返回此次战斗攻击的卡  
---@return Card
function Duel.GetAttacker() end

-- ●Card|nil Duel.GetAttackTarget()  
-- 返回此次战斗被攻击的卡，如果返回nil表示是直接攻击  
---@return Card | nil
function Duel.GetAttackTarget() end

-- ●bool Duel.NegateAttack()  
-- 无效此次攻击，返回值表示是否成功  
-- 此次攻击已经被其他效果无效或导致攻击的卡不能攻击则返回false  
---@return boolean
function Duel.NegateAttack() end

-- ●void Duel.ChainAttack([Card c])  
-- 使攻击卡[或卡片c]可以再进行1次攻击（比如 大开辟，破灭的女王）  
---@param c? Card
function Duel.ChainAttack(c) end

-- ●void Duel.Readjust()  
-- 刷新场上的卡的信息  
-- 非特定情况或者不清楚原理请勿使用此函数以免形成死循环  
function Duel.Readjust() end

-- ●void Duel.AdjustInstantly([Card c])  
-- 手动刷新场上[受到卡片c影响]的卡的无效状态  
---@param c? Card
function Duel.AdjustInstantly(c) end

-- ●Group Duel.GetFieldGroup(int player, int s, int o)  
-- 返回以player来看的指定位置的卡，s代表以player来看的自己的位置，o代表以player来看的对方的位置  
---@param player integer
---@param s integer
---@param o integer
---@return Group
function Duel.GetFieldGroup(player, s, o) end

-- ●int Duel.GetFieldGroupCount(int player, int s, int o)  
-- 同 Duel.GetFieldGroup ，只是返回的是卡的数量  
---@param player integer
---@param s integer
---@param o integer
---@return integer
function Duel.GetFieldGroupCount(player, s, o) end

-- ●Group Duel.GetDecktopGroup(int player, int count)  
-- 返回玩家player的卡组最上方的count张卡  
---@param player integer
---@param count integer
---@return Group
function Duel.GetDecktopGroup(player, count) end

-- ●Group Duel.GetExtraTopGroup(int player, int count)  
-- 返回玩家player的额外卡组表侧表示的卡中最上方的count张卡  
---@param player integer
---@param count integer
---@return Group
function Duel.GetExtraTopGroup(player, count) end

-- ●Group Duel.GetMatchingGroup(function f|nil, int player, int s, int o, Card|Group ex|nil, ...)  
-- 过滤函数，返回以player来看的指定位置满足过滤条件f并且不等于ex的卡  
-- s代表以player来看的自己的位置，o代表以player来看的对方的位置  
-- 第6个参数开始为额外参数  
---@param f? function
---@param player integer
---@param s integer
---@param o integer
---@param ex? Card | Group
---@param ... any
---@return Group
function Duel.GetMatchingGroup(f, player, s, o, ex, ...) end

-- ●int Duel.GetMatchingGroupCount(function f|nil, int player, int s, int o, Card|Group ex|nil, ...)  
-- 过滤函数，返回以player来看的指定位置满足过滤条件f并且不等于ex的卡的数量  
-- s代表以player来看的自己的位置，o代表以player来看的对方的位置  
-- 第6个参数开始为额外参数  
---@param f? function
---@param player integer
---@param s integer
---@param o integer
---@param ex? Card | Group
---@param ... any
---@return integer
function Duel.GetMatchingGroupCount(f, player, s, o, ex, ...) end

-- ●Card Duel.GetFirstMatchingCard(function f|nil, int player, int s, int o, Card|Group ex|nil, ...)  
-- 过滤函数，返回以player来看的指定位置满足过滤条件f并且不等于ex的第一张卡,没有则返回nil  
-- s代表以player来看的自己的位置，o代表以player来看的对方的位置  
-- 第6个参数开始为额外参数  
---@param f? function
---@param player integer
---@param s integer
---@param o integer
---@param ex? Card | Group
---@param ... any
---@return Card
function Duel.GetFirstMatchingCard(f, player, s, o, ex, ...) end

-- ●Group Duel.GetReleaseGroup(int player[, bool use_hand=false])  
-- 返回玩家player可解放（非上级召唤用）的卡片组， use_hand=true 则包括手卡  
---@param player integer
---@param use_hand? boolean false
---@return Group
function Duel.GetReleaseGroup(player, use_hand) end

-- ●integer Duel.GetReleaseGroupCount(int player[, bool use_hand=false])  
-- 返回玩家player可解放（非上级召唤用）的卡片数量， use_hand=true 则包括手卡  
---@param player integer
---@param use_hand? boolean false
---@return integer
function Duel.GetReleaseGroupCount(player, use_hand) end

-- ●bool Duel.CheckReleaseGroup(int player, function f|nil, int count, Card|Group ex|nil, ...)  
-- 检查玩家player场上是否存在至少count张满足过滤条件f并且不等于ex的可解放的卡（非上级召唤用）  
-- 第5个参数开始为额外参数  
---@param player integer
---@param f? function
---@param count integer
---@param ex? Card | Group
---@param ... any
---@return boolean
function Duel.CheckReleaseGroup(player, f, count, ex, ...) end

-- ●Group Duel.SelectReleaseGroup(int sel_player, function f|nil, int min, int max, Card|Group ex|nil, ...)  
-- 过滤函数，让玩家sel_player从场上选择min-max张不等于ex的满足条件f的可解放的卡（非上级召唤用）  
-- 第6个参数开始为额外参数  
---@param sel_player integer
---@param f? function
---@param min integer
---@param max integer
---@param ex? Card | Group
---@param ... any
---@return Group
function Duel.SelectReleaseGroup(sel_player, f, min, max, ex, ...) end

-- ●bool Duel.CheckReleaseGroupEx(int player, function f|nil, int count, Card|Group ex|nil, ...)  
-- 检查玩家player场上·手卡是否存在至少count张满足过滤条件f并且不等于ex的可解放的卡（非上级召唤用）  
-- 第5个参数开始为额外参数  
---@param player integer
---@param f? function
---@param count integer
---@param ex? Card | Group
---@param ... any
---@return boolean
function Duel.CheckReleaseGroupEx(player, f, count, ex, ...) end

-- ●Group Duel.SelectReleaseGroupEx(int player, function f|nil, int min, int max, Card|Group ex|nil, ...)  
-- 过滤函数，让玩家player从场上·手卡选择min-max张满足过滤条件f并且不等于ex的可解放的卡（非上级召唤用）  
-- 第6个参数开始为额外参数  
---@param player integer
---@param f? function
---@param min integer
---@param max integer
---@param ex? Card | Group
---@param ... any
---@return Group
function Duel.SelectReleaseGroupEx(player, f, min, max, ex, ...) end

-- ●Group Duel.GetTributeGroup(Card c)  
-- 返回场上用于通常召唤c可解放（上级召唤用）的卡片组  
---@param c Card
---@return Group
function Duel.GetTributeGroup(c) end

-- ●int Duel.GetTributeCount(Card c[, Group mg, bool ex=false])  
-- 返回场上[或mg中]用于通常召唤c的祭品数量，ex=true则允许对方场上的怪兽（太阳神之翼神龙-球体形）  
-- 此数量不一定等于Duel.GetTributeGroup的返回值中的卡片数量  
-- 因为某些卡可以作为多个祭品来使用  
---@param c Card
---@param mg? Group
---@param ex? boolean false
---@return integer
function Duel.GetTributeCount(c, mg, ex) end

-- ●Group Duel.CheckTribute(Card c, int min[, int max=min|nil, Group mg|nil, int toplayer=c:GetControler()|nil, int zone=0x1f|nil])  
-- 判断场上[或mg中]是否存在用于通常召唤c[到toplayer场上的区域 zone]的min[到max]个祭品  
---@param c Card
---@param min integer
---@param max? integer min|nil
---@param mg? Group
---@param toplayer? integer c:GetControler()|nil
---@param zone? integer 0x1f|nil
---@return Group
function Duel.CheckTribute(c, min, max, mg, toplayer, zone) end

-- ●Group Duel.SelectTribute(int player, Card c, int min, int max[, Group mg|nil, int toplayer=c:GetControler()|nil])  
-- 让玩家player从场上[或mg中]选择用于通常召唤c的min-max个祭品，召唤到 toplayer 场上  
---@param player integer
---@param c Card
---@param min integer
---@param max integer
---@param mg? Group
---@param toplayer? integer c:GetControler()|nil
---@return Group
function Duel.SelectTribute(player, c, min, max, mg, toplayer) end

-- ●int Duel.GetTargetCount(function f|nil, int player, int s, int o, Card|Group ex|nil, ...)  
-- 基本同Duel.GetMatchingGroupCount ，不同之处在于需要追加判定卡片是否能成为当前正在处理的效果的对象  
---@param f? function
---@param player integer
---@param s integer
---@param o integer
---@param ex? Card | Group
---@param ... any
---@return integer
function Duel.GetTargetCount(f, player, s, o, ex, ...) end

-- ●bool Duel.IsExistingTarget(function f|nil, int player, int s, int o, int count, Card|Group ex|nil, ...)  
-- 基本同Duel.IsExistingMatchingCard ，不同之处在于需要追加判定卡片是否能成为当前正在处理的效果的对象  
---@param f? function
---@param player integer
---@param s integer
---@param o integer
---@param count integer
---@param ex? Card | Group
---@param ... any
---@return boolean
function Duel.IsExistingTarget(f, player, s, o, count, ex, ...) end

-- ●Group Duel.SelectTarget(int sel_player, function f|nil, int player, int s, int o, int min, int max, Card|Group ex|nil, ...)  
-- 基本同Duel.SelectMatchingCard ，不同之处在于此函数会同时将当前正在处理的连锁的对象设置成选择的卡  
---@param sel_player integer
---@param f? function
---@param player integer
---@param s integer
---@param o integer
---@param min integer
---@param max integer
---@param ex? Card | Group
---@param ... any
---@return Group
function Duel.SelectTarget(sel_player, f, player, s, o, min, max, ex, ...) end

-- ●Group Duel.SelectFusionMaterial(int player, Card c, Group g[, Card gc|nil, int chkf=PLAYER_NONE])  
-- 让玩家player从g中选择一组[必须包含gc在内的]融合怪兽c的融合素材  
---@param player integer
---@param c Card
---@param g Group
---@param gc? Card
---@param chkf? integer PLAYER_NONE
---@return Group
function Duel.SelectFusionMaterial(player, c, g, gc, chkf) end

-- ●void Duel.SetFusionMaterial(Group g)  
-- 设置g为需要使用的融合素材  
---@param g Group
function Duel.SetFusionMaterial(g) end

-- ●void Duel.SetSynchroMaterial(Group g)  
-- 设置g为需要使用的同调素材  
---@param g Group
function Duel.SetSynchroMaterial(g) end

-- ●Group Duel.SelectSynchroMaterial(int player, Card c, function f1|nil, function f2|nil, int min, int max[, Card smat|nil, Group mg|nil])  
-- 让玩家player从场上[或mg中]选择用于同调c需要的[必须包含smat在内（如果有mg~=nil则忽略此参数）]满足条件的一组素材  
-- f1是 1 只需要满足的过滤条件，f2是 min-max 只需要满足的过滤条件  
-- f1,f2 之中，至少有一种为调整的条件  
---@param player integer
---@param c Card
---@param f1? function
---@param f2? function
---@param min integer
---@param max integer
---@param smat? Card
---@param mg? Group
---@return Group
function Duel.SelectSynchroMaterial(player, c, f1, f2, min, max, smat, mg) end

-- ●bool Duel.CheckSynchroMaterial(Card c, function f1|nil, function f2|nil, int min, int max[, Card smat|nil, Group mg|nil])  
-- 检查场上[或mg中]是否存在一组[必须包括smat在内的（如果有mg~=nil则忽略此参数）]满足条件的卡作为同调召唤c的素材  
-- f1是 1 只需要满足的过滤条件，f2是 min-max 只需要满足的过滤条件  
-- f1,f2 之中，至少有一种为调整的条件  
---@param c Card
---@param f1? function
---@param f2? function
---@param min integer
---@param max integer
---@param smat? Card
---@param mg? Group
---@return boolean
function Duel.CheckSynchroMaterial(c, f1, f2, min, max, smat, mg) end

-- ●Group Duel.SelectTunerMaterial(int player, Card c, Card tuner, function f1|nil, function f2|nil, int min, int max[, Group mg|nil])  
-- 让玩家从场上[或mg中]选择用于同调c需要的满足条件的以tuner作为调整的min-max张卡的一组素材  
-- f1是 1 只需要满足的过滤条件，f2是 min-max 只需要满足的过滤条件  
---@param player integer
---@param c Card
---@param tuner Card
---@param f1? function
---@param f2? function
---@param min integer
---@param max integer
---@param mg? Group
---@return Group
function Duel.SelectTunerMaterial(player, c, tuner, f1, f2, min, max, mg) end

-- ●bool Duel.CheckTunerMaterial(Card c, Card tuner, function f1|nil, function f2|nil, int min, int max[, Group mg|nil])  
-- 检查场上[或mg中]是否存在一组以tuner作为调整,并且满足条件的卡作为同调召唤c的素材  
-- f1是 1 只需要满足的过滤条件，f2是 min-max 只需要满足的过滤条件  
---@param c Card
---@param tuner Card
---@param f1? function
---@param f2? function
---@param min integer
---@param max integer
---@param mg? Group
---@return boolean
function Duel.CheckTunerMaterial(c, tuner, f1, f2, min, max, mg) end

-- ●Group Duel.GetRitualMaterial(int player)  
-- 返回玩家player可用的用于仪式召唤素材的卡片组  
-- 包含手上，场上可解放的以及墓地的仪式魔人等卡  
---@param player integer
---@return Group
function Duel.GetRitualMaterial(player) end

-- ●void Duel.ReleaseRitualMaterial(Group g)  
-- 解放仪式用的素材g，如果是墓地的仪式魔人等卡则除外  
---@param g Group
function Duel.ReleaseRitualMaterial(g) end

-- ●Group Duel.GetFusionMaterial(int player)  
-- 返回玩家player可用的用于融合召唤素材的卡片组  
-- 包含手卡·场上的怪兽的以及受 EFFECT_EXTRA_FUSION_MATERIAL 影响的卡  
---@param player integer
---@return Group
function Duel.GetFusionMaterial(player) end

-- ●void Duel.SetSelectedCard(Card|Group cards)  
-- 将准备由Duel.GrabSelectedCard读取的卡片/卡片组设置为cards。  
-- 单独使用没有意义，要配合Duel.GrabSelectedCard来读取。  
-- 用于多个函数先后使用，又无法相互传递数据时的参数传递。  
---@param cards Card | Group
function Duel.SetSelectedCard(cards) end

-- ●void Duel.SetTargetCard(Card|Group targets)  
-- 把当前正在处理的连锁的对象设置成targets  
-- 注，这里的对象指的的广义的对象，包括不取对象的效果可能要处理的对象  
---@param targets Card | Group
function Duel.SetTargetCard(targets) end

-- ●void Duel.ClearTargetCard()  
-- 把当前正在处理的连锁的对象全部清除  
function Duel.ClearTargetCard() end

-- ●void Duel.SetTargetPlayer(int player)  
-- 把当前正在处理的连锁的对象玩家设置成player  
---@param player integer
function Duel.SetTargetPlayer(player) end

-- ●void Duel.SetTargetParam(int param)  
-- 把当前正在处理的连锁的对象参数设置成param  
---@param param integer
function Duel.SetTargetParam(param) end

-- ●bool[,Card|Group,int,int,int] Duel.GetOperationInfo(int chainc, int category)  
-- 返回连锁chainc的category分类的操作信息，存在的话，则返回值为5个， chainc=0 则是表示当前连锁  
-- 第一个返回值是false的话表示不存在该分类  
-- 后4个返回值对应Duel.SetOperationInfo的后4个参数：Card|Group targets, int count, int target_player, int target_param  
---@param chainc integer
---@param category integer
---@return boolean
---@return Card | Group | nil
---@return integer | nil
---@return integer | nil
---@return integer | nil
function Duel.GetOperationInfo(chainc, category) end

-- ●int Duel.GetOperationCount(int chainc)  
-- 返回连锁chainc包含的操作分类的数量  
---@param chainc integer
---@return integer
function Duel.GetOperationCount(chainc) end

-- ●bool Duel.CheckXyzMaterial(Card c, function f|nil, int lv, int min, int max, Group mg|nil)  
-- 检查场上[或mg中]是否存在XYZ召唤c的XYZ用等级为lv的min-max个满足条件f的叠放素材  
---@param c Card
---@param f? function
---@param lv integer
---@param min integer
---@param max integer
---@param mg? Group
---@return boolean
function Duel.CheckXyzMaterial(c, f, lv, min, max, mg) end

-- ●Group Duel.SelectXyzMaterial(int player, Card c, function f|nil, int lv, int min, int max[, Group mg|nil])  
-- 让玩家player为XYZ怪兽c从场上[或mg中]选择XYZ用等级为lv的min-max个满足条件f的叠放素材  
---@param player integer
---@param c Card
---@param f? function
---@param lv integer
---@param min integer
---@param max integer
---@param mg? Group
---@return Group
function Duel.SelectXyzMaterial(player, c, f, lv, min, max, mg) end

-- ●void Duel.Overlay(Card c, Card|Group ocard)  
-- 把ocard作为c的叠放卡叠放  
---@param c Card
---@param ocard Card | Group
function Duel.Overlay(c, ocard) end

-- ●Group Duel.GetOverlayGroup(int player, int s, int o)  
-- 返回以player来看的指定位置的所有叠放的卡  
-- s代表以player来看的自己的位置，o代表以player来看的对方的位置  
---@param player integer
---@param s integer
---@param o integer
---@return Group
function Duel.GetOverlayGroup(player, s, o) end

-- ●int Duel.GetOverlayCount(int player, int s, int o)  
-- 返回以player来看的指定位置的所有叠放的卡的数量  
-- s代表以player来看的自己的位置，o代表以player来看的对方的位置  
---@param player integer
---@param s integer
---@param o integer
---@return integer
function Duel.GetOverlayCount(player, s, o) end

-- ●bool Duel.CheckRemoveOverlayCard(int player, int s, int o, int count, int reason)  
-- 检查player能否以原因reason移除以player来看的指定位置至少count张卡  
-- s代表以player来看的自己的位置，o代表以player来看的对方的位置  
---@param player integer
---@param s integer
---@param o integer
---@param count integer
---@param reason integer
---@return boolean
function Duel.CheckRemoveOverlayCard(player, s, o, count, reason) end

-- ●bool Duel.RemoveOverlayCard(int player, int s, int o, int min, int max, int reason)  
-- 让player以reason原因移除以player来看的指定位置的min-max张叠放卡，返回值表示是否成功  
-- s代表以player来看的自己的位置，o代表以player来看的对方的位置  
---@param player integer
---@param s integer
---@param o integer
---@param min integer
---@param max integer
---@param reason integer
---@return boolean
function Duel.RemoveOverlayCard(player, s, o, min, max, reason) end

-- ●void Duel.HintSelection(Group g)  
-- 手动为g显示被选为对象的动画效果，并记录这些卡被选为对象(广义的)  
---@param g Group
function Duel.HintSelection(g) end

-- ●bool Duel.SelectEffectYesNo(int player, Card c[, int desc=95])  
-- 让玩家player选择是否发动卡片c的效果[提示文字可以自行用desc替换，desc 用 aux.Stringid 获取]  
---@param player integer
---@param c Card
---@param desc? integer 95
---@return boolean
function Duel.SelectEffectYesNo(player, c, desc) end

-- ●bool Duel.SelectYesNo(int player, int desc)  
-- 让玩家player选择是或否  
---@param player integer
---@param desc integer
---@return boolean
function Duel.SelectYesNo(player, desc) end

-- ●int Duel.SelectOption(int player, int desc1, ...)  
-- 让玩家选择选项，从第二个参数开始，每一个参数代表一条选项  
-- 返回选择的选项的序号(从0开始)  
---@param player integer
---@param desc1 integer
---@param ... any
---@return integer
function Duel.SelectOption(player, desc1, ...) end

-- ●void Duel.SelectSequence()  
--  此函数只有一个 check_action_permission 操作，不知何用  
function Duel.SelectSequence() end

-- ●int Duel.SelectPosition(int player, Card c, int pos)  
-- 让玩家player选择c的表示形式并返回  
---@param player integer
---@param c Card
---@param pos integer
---@return integer
function Duel.SelectPosition(player, c, pos) end

-- ●int Duel.SelectDisableField(int player, int count, int s, int o, int filter)  
-- 让玩家player选择指定位置满足标记条件filter的count个可用的空格，并返回选择位置的标记  
-- 常用于选择区域不能使用或移动怪兽格子  
---@param player integer
---@param count integer
---@param s integer
---@param o integer
---@param filter integer
---@return integer
function Duel.SelectDisableField(player, count, s, o, filter) end

-- ●int Duel.AnnounceRace(int player, int count, int available)  
-- 让玩家player从可选的种族中宣言count个种族  
-- available是所有可选种族的组合值，可以自行组合  
-- RACE_ALL			=0x1ffffff	--全种族  
-- RACE_WARRIOR		=0x1		--战士  
-- RACE_SPELLCASTER	=0x2		--魔法师  
-- RACE_FAIRY			=0x4		--天使  
-- RACE_FIEND			=0x8		--恶魔  
-- RACE_ZOMBIE			=0x10		--不死  
-- RACE_MACHINE		=0x20		--机械  
-- RACE_AQUA			=0x40		--水  
-- RACE_PYRO			=0x80		--炎  
-- RACE_ROCK			=0x100		--岩石  
-- RACE_WINDBEAST		=0x200		--鸟兽  
-- RACE_PLANT			=0x400		--植物  
-- RACE_INSECT			=0x800		--昆虫  
-- RACE_THUNDER		=0x1000		--雷  
-- RACE_DRAGON			=0x2000		--龙  
-- RACE_BEAST			=0x4000		--兽  
-- RACE_BEASTWARRIOR	=0x8000		--兽战士  
-- RACE_DINOSAUR		=0x10000	--恐龙  
-- RACE_FISH			=0x20000	--鱼  
-- RACE_SEASERPENT		=0x40000	--海龙  
-- RACE_REPTILE		=0x80000	--爬虫类  
-- RACE_PSYCHO			=0x100000	--念动力  
-- RACE_DEVINE			=0x200000	--幻神兽  
-- RACE_CREATORGOD		=0x400000	--创造神  
-- RACE_WYRM			=0x800000	--幻龙  
-- RACE_CYBERSE		=0x1000000	--电子界  
---@param player integer
---@param count integer
---@param available integer
---@return integer
function Duel.AnnounceRace(player, count, available) end

-- ●int Duel.AnnounceAttribute(int player, int count, int available)  
-- 让玩家player从可选的属性中宣言count个属性  
-- available是所有可选属性的组合值，可以自行组合  
-- ATTRIBUTE_EARTH		=0x01		--地  
-- ATTRIBUTE_WATER		=0x02		--水  
-- ATTRIBUTE_FIRE		=0x04		--炎  
-- ATTRIBUTE_WIND		=0x08		--风  
-- ATTRIBUTE_LIGHT		=0x10		--光  
-- ATTRIBUTE_DARK		=0x20		--暗  
-- ATTRIBUTE_DEVINE	=0x40		--神  
---@param player integer
---@param count integer
---@param available integer
---@return integer
function Duel.AnnounceAttribute(player, count, available) end

-- ●int Duel.AnnounceLevel(int player[, int min=1|nil, int max=12|nil, ...])  
-- 让玩家宣言一个[min-max]等级并返回  
---@param player integer
---@param min? integer 1|nil
---@param max? integer 12|nil
---@param ...? any
---@return integer
function Duel.AnnounceLevel(player, min, max, ...) end

-- ●int Duel.AnnounceCard(int player[, int type=(TYPE_MONSTER | TYPE_SPELL | TYPE_TRAP)])  
-- 让玩家player宣言一个[type类型的]卡片代号（比如：禁止令）  
---@param player integer
---@param type? integer (TYPE_MONSTER | TYPE_SPELL | TYPE_TRAP)
---@return integer
function Duel.AnnounceCard(player, type) end

-- ●int Duel.AnnounceCardFilter(int player, ...)  
-- 让玩家player宣言一个满足条件的卡片代号，条件是额外参数，并且都是 int 类型，用于宣言某些特定范围的卡  
-- 例如：虚空俏丽魔术师  
-- c28776350.announce_filter={TYPE_FUSION+TYPE_SYNCHRO+TYPE_XYZ+TYPE_LINK,OPCODE_ISTYPE,OPCODE_NOT}  
-- local ac=Duel.AnnounceCardFilter(tp,table.unpack(c28776350.announce_filter))  
-- 因为主卡组里不可能存在 TYPE_FUSION, TYPE_SYNCHRO, TYPE_XYZ, TYPE_LINK 这些类型的卡，所以将它们排除在可以宣言的卡名里。  
-- 虽然直接用 Duel.AnnounceCard 也行，但是这种写法可以避免无意义宣言  
---@param player integer
---@param ... any
---@return integer
function Duel.AnnounceCardFilter(player, ...) end

-- ●int Duel.AnnounceType(int player[, int antype=70|71|72])  
-- 让玩家player宣言一个卡片类型（怪兽·魔法·陷阱）  
-- 别想着直接宣言 复合类型（永续魔法 等）  
---@param player integer
---@param antype? integer 70|71|72
---@return integer
function Duel.AnnounceType(player, antype) end

-- ●int,int Duel.AnnounceNumber(int player, int number, ...)  
-- 让玩家player宣言一个数字  
-- 从第二个参数开始，每一个参数代表一个可宣言的数字  
-- 第一个返回值是宣言的数字，第二个返回值是宣言数字在所有选项中的位置  
---@param player integer
---@param number integer
---@param ... any
---@return integer
---@return integer
function Duel.AnnounceNumber(player, number, ...) end

-- ●int Duel.AnnounceCoin(int player[, int antype=60|61])  
-- 让玩家player宣言硬币的正反面  
---@param player integer
---@param antype? integer 60|61
---@return integer
function Duel.AnnounceCoin(player, antype) end

-- ●... Duel.TossCoin(int player, int count)  
-- 让玩家player投count(<=5)次硬币，返回值为count个结果，0或者1, 正面是 1，反面是0  
---@param player integer
---@param count integer
---@return ...
function Duel.TossCoin(player, count) end

-- ●... Duel.TossDice(int player, int count1[, int count2 = 0])  
-- 让玩家player投count1次骰子[，1-player投count2次骰子](count1+count2<=5)  
-- 返回值为count1+count2个结果，1-6  
---@param player integer
---@param count1 integer
---@param count2? integer 0
---@return ...
function Duel.TossDice(player, count1, count2) end

-- ●int Duel.RockPaperScissors([bool repeat_=true])  
-- 猜拳，若 repeat=false 则只猜一次；否则就是直到分出胜负为止。返回胜利的玩家号码  
---@param repeat_? boolean true
---@return integer
function Duel.RockPaperScissors(repeat_) end

-- ●int,int,int,int,int Duel.GetCoinResult()  
-- 返回当前投硬币的结果  
---@return integer
---@return integer
---@return integer
---@return integer
---@return integer
function Duel.GetCoinResult() end

-- ●int,int,int,int,int Duel.GetDiceResult()  
-- 返回当前掷骰子的结果  
---@return integer
---@return integer
---@return integer
---@return integer
---@return integer
function Duel.GetDiceResult() end

-- ●void Duel.SetCoinResult(int res, ... )  
-- 强行修改投硬币的结果为res ,最多5个参数，res只能是 0 或 1, ，其他全算作 0  
-- 此函数用于永续的EVENT_TOSS_COIN事件中  
---@param res integer
---@param ... any
function Duel.SetCoinResult(res, ...) end

-- ●void Duel.SetDiceResult(int res, ...)  
-- 强行修改投骰子的结果为res ,最多5个参数，res只能是 1~255, ，其他数字全算作 1  
-- 此函数用于永续的EVENT_TOSS_DICE事件中  
---@param res integer
---@param ... any
function Duel.SetDiceResult(res, ...) end

-- ●Effect|nil,... Duel.IsPlayerAffectedByEffect(int player, int code)  
-- 检查player是否受到种类为code的效果影响，如果有就返回该效果，没有则返回nil  
---@param player integer
---@param code integer
---@return Effect | nil
---@return ...
function Duel.IsPlayerAffectedByEffect(player, code) end

-- ●bool Duel.IsPlayerCanDraw(int player[, int count=0])  
-- 检查玩家player是否可以效果抽[count张]卡  
---@param player integer
---@param count? integer 0
---@return boolean
function Duel.IsPlayerCanDraw(player, count) end

-- ●bool Duel.IsPlayerCanDiscardDeck(int player, int count)  
-- 检查玩家player是否可以把卡组顶端count张卡送去墓地  
---@param player integer
---@param count integer
---@return boolean
function Duel.IsPlayerCanDiscardDeck(player, count) end

-- ●bool Duel.IsPlayerCanDiscardDeckAsCost(int player, int count)  
-- 检查玩家player能否把卡组顶端count张卡送去墓地作为cost  
---@param player integer
---@param count integer
---@return boolean
function Duel.IsPlayerCanDiscardDeckAsCost(player, count) end

-- ●bool Duel.IsPlayerCanSummon(int player[, int sumtype, Card c])  
-- 检查玩家player是否可以通常召唤[c，以sumtype方式]  
-- 如果需要可选参数，则必须全部使用  
-- 仅当玩家收到“不能上级召唤”等效果的影响时返回false  
---@param player integer
---@param sumtype? integer
---@param c? Card
---@return boolean
function Duel.IsPlayerCanSummon(player, sumtype, c) end

-- ●bool Duel.IsPlayerCanSpecialSummon(int player[, int sumtype, int sumpos, int target_player, Card c])  
-- 检查玩家player能否特殊召唤[c到target_player场上，以sumtype召唤方式，sumpos表示形式]  
-- 如果需要可选参数，则必须全部使用  
---@param player integer
---@param sumtype? integer
---@param sumpos? integer
---@param target_player? integer
---@param c? Card
---@return boolean
function Duel.IsPlayerCanSpecialSummon(player, sumtype, sumpos, target_player, c) end

-- ●bool Duel.IsPlayerCanFlipSummon(int player, Card c)  
-- 检查玩家player是否可以反转召唤c  
---@param player integer
---@param c Card
---@return boolean
function Duel.IsPlayerCanFlipSummon(player, c) end

-- ●bool Duel.IsPlayerCanSpecialSummonMonster(int player, int code[, int setcode|nil, int type|nil, int atk|nil, int def|nil, int level|nil, int race|nil, int attribute|nil, int  pos=POS_FACEUP, int target_player=player, int sumtype=0])  
-- 检查玩家player是否可以[以sumtype 方式][以 pos 表示形式]特殊召唤 给定参数的怪兽到target_player场上  
-- 此函数通常用于判定是否可以特招token和陷阱怪兽  
---@param player integer
---@param code integer
---@param setcode? integer
---@param type? integer
---@param atk? integer
---@param def? integer
---@param level? integer
---@param race? integer
---@param attribute? integer
---@param pos? integer POS_FACEUP
---@param target_player? integer player
---@param sumtype? integer 0
---@return boolean
function Duel.IsPlayerCanSpecialSummonMonster(player, code, setcode, type, atk, def, level, race, attribute, pos, target_player, sumtype) end

-- ●bool Duel.IsPlayerCanSpecialSummonCount(int player, int count)  
-- 检查玩家player能否特殊召唤count次  
---@param player integer
---@param count integer
---@return boolean
function Duel.IsPlayerCanSpecialSummonCount(player, count) end

-- ●bool Duel.IsPlayerCanRelease(int player, Card c)  
-- 检查玩家player是否能解放c  
---@param player integer
---@param c Card
---@return boolean
function Duel.IsPlayerCanRelease(player, c) end

-- ●bool Duel.IsPlayerCanRemove(int player, Card c)  
-- 检查玩家player是否能除外c  
---@param player integer
---@param c Card
---@return boolean
function Duel.IsPlayerCanRemove(player, c) end

-- ●bool Duel.IsPlayerCanSendtoHand(int player, Card c)  
-- 检查玩家是否能把c送去手卡  
---@param player integer
---@param c Card
---@return boolean
function Duel.IsPlayerCanSendtoHand(player, c) end

-- ●bool Duel.IsPlayerCanSendtoGrave(int player, Card c)  
-- 检查玩家是否能把c送去墓地  
---@param player integer
---@param c Card
---@return boolean
function Duel.IsPlayerCanSendtoGrave(player, c) end

-- ●bool Duel.IsPlayerCanSendtoDeck(int player, Card c)  
-- 检查玩家是否能把c送去卡组  
---@param player integer
---@param c Card
---@return boolean
function Duel.IsPlayerCanSendtoDeck(player, c) end

-- ●bool Duel.IsPlayerExtraSummoned(int player)  
-- 检查玩家是否进行过额外的通常召唤  
---@param player integer
---@return boolean
function Duel.IsPlayerExtraSummoned(player) end

-- ●bool Duel.IsChainNegatable(int chainc)  
-- 检查连锁chainc的发动能否被无效  
---@param chainc integer
---@return boolean
function Duel.IsChainNegatable(chainc) end

-- ●bool Duel.IsChainDisablable(int chainc)  
-- 检查连锁chainc的效果能否被无效  
---@param chainc integer
---@return boolean
function Duel.IsChainDisablable(chainc) end

-- ●bool Duel.CheckChainTarget(int chainc, Card c)  
-- 检查c是否是连锁chainc的效果的正确的对象  
---@param chainc integer
---@param c Card
---@return boolean
function Duel.CheckChainTarget(chainc, c) end

-- ●bool Duel.CheckChainUniqueness()  
-- 检查当前连锁中是否存在同名卡的发动，返回true表示无同名卡  
---@return boolean
function Duel.CheckChainUniqueness() end

-- ●int,... Duel.GetActivityCount(int player, int activity_type, ...)  
-- 返回player进行对应的activity_type操作的次数  
-- activity_type为以下类型  
-- ACTIVITY_SUMMON         =1	--召唤（不包括通常召唤的放置）  
-- ACTIVITY_NORMALSUMMON   =2	--通常召唤（包括通常召唤的放置）  
-- ACTIVITY_SPSUMMON       =3	--特殊召唤  
-- ACTIVITY_FLIPSUMMON     =4	--反转召唤  
-- ACTIVITY_ATTACK         =5	--攻击  
-- ACTIVITY_BATTLE_PHASE   =6	--进入战斗阶段  
---@param player integer
---@param activity_type integer
---@param ... any
---@return integer
---@return ...
function Duel.GetActivityCount(player, activity_type, ...) end

-- ●bool Duel.CheckPhaseActivity()  
-- 检查玩家在当前阶段是否有操作（是否处于阶段开始时，如七皇之剑）  
---@return boolean
function Duel.CheckPhaseActivity() end

-- ●void Duel.AddCustomActivityCounter(int counter_id, int activity_type, function f)  
-- 设置操作类型为activity_type、代号为counter_id的计数器，放在initial_effect函数内  
-- f为过滤函数，以Card类型为参数，返回值为false的卡片进行以下类型的操作，计数器增加1（目前最多为1）  
-- activity_type为以下类型  
-- ACTIVITY_SUMMON         =1	--召唤（不包括通常召唤的set）  
-- ACTIVITY_NORMALSUMMON   =2	--通常召唤（包括通常召唤的set）  
-- ACTIVITY_SPSUMMON       =3	--特殊召唤  
-- ACTIVITY_FLIPSUMMON     =4	--反转召唤  
-- ACTIVITY_ATTACK         =5	--攻击  
-- ACTIVITY_CHAIN          =7	--发动效果  
---@param counter_id integer
---@param activity_type integer
---@param f function
function Duel.AddCustomActivityCounter(counter_id, activity_type, f) end

-- ●int Duel.GetCustomActivityCount(int counter_id, int player, int activity_type)  
-- 代号为counter_id的计数器的计数，返回player进行以下操作的次数（目前最多为1）  
-- activity_type为以下类型  
-- ACTIVITY_SUMMON         =1	--召唤（不包括通常召唤的set）  
-- ACTIVITY_NORMALSUMMON   =2	--通常召唤（包括通常召唤的set）  
-- ACTIVITY_SPSUMMON       =3	--特殊召唤  
-- ACTIVITY_FLIPSUMMON     =4	--反转召唤  
-- ACTIVITY_ATTACK         =5	--攻击  
-- ACTIVITY_CHAIN          =7	--发动效果  
---@param counter_id integer
---@param player integer
---@param activity_type integer
---@return integer
function Duel.GetCustomActivityCount(counter_id, player, activity_type) end

-- ●int Duel.GetBattledCount(int player)  
-- 返回玩家player这回合战斗过的次数  
---@param player integer
---@return integer
function Duel.GetBattledCount(player) end

-- ●bool Duel.IsAbleToEnterBP()  
-- 检查回合玩家能否进入战斗阶段  
---@return boolean
function Duel.IsAbleToEnterBP() end

-- ●void Duel.SwapDeckAndGrave(int player)  
-- 现世与冥界的逆转专用。把玩家player的卡组和墓地交换  
---@param player integer
function Duel.SwapDeckAndGrave(player) end

-- ●void Duel.MajesticCopy(Card c1, Card c2)  
-- 救世星龙专用。把c2记述的效果复制给c1  
-- 强制发动的效果可以选择是否发动  
---@param c1 Card
---@param c2 Card
function Duel.MajesticCopy(c1, c2) end

-- ●int Duel.GetMasterRule()  
-- 返回当前决斗规则（大师规则X）。  
---@return integer
function Duel.GetMasterRule() end

-- ●int,int,... Duel.ReadCard(int|Card target, int type, int type2, ...)  
-- 返回卡片target（或是卡号为target的卡）的type的信息。  
-- type可以是以下之一：  
-- CARDDATA_CODE			1  
-- CARDDATA_ALIAS			2  
-- CARDDATA_SETCODE		3  
-- CARDDATA_TYPE			4  
-- CARDDATA_LEVEL			5  
-- CARDDATA_ATTRIBUTE		6  
-- CARDDATA_RACE			7  
-- CARDDATA_ATTACK			8  
-- CARDDATA_DEFENSE		9  
-- CARDDATA_LSCALE			10  
-- CARDDATA_RSCALE			11  
-- CARDDATA_LINK_MARKER	12  
---@param target integer | Card
---@param type integer
---@param type2 integer
---@param ... any
---@return integer
---@return integer
---@return ...
function Duel.ReadCard(target, type, type2, ...) end

-- ●int Duel.Exile(Card|Group target, int reason)  
-- 以reason的原因把target直接消灭。返回被消灭的卡的数量。  
---@param target Card | Group
---@param reason integer
---@return integer
function Duel.Exile(target, reason) end

-- ●void Duel.DisableActionCheck(bool enabled)  
-- 打开或关闭DisableActionCheck模式。  
-- 在DisableActionCheck模式下，可以在禁止进行决斗操作的处理（如condition以及target的chk==0的部分）进行决斗操作，不会出现Action is not allowed的报错。  
---@param enabled boolean
function Duel.DisableActionCheck(enabled) end

-- ●void Duel.DisableSelfDestroyCheck([bool enabled=true])  
-- 关闭卡片的自爆检查。不传参或传true为关闭，传false为启用自爆检查  
---@param enabled? boolean true
function Duel.DisableSelfDestroyCheck(enabled) end

-- ●void Duel.SetMetatable(Card|Group|Effect target, table mt)  
-- 将target的元表属性设置为mt。  
-- 此函数用途和lua内置函数setmetatable相同，只是针对YGOPro内的userdata属性而设计的。  
---@param target Card | Group | Effect
---@param mt table
function Duel.SetMetatable(target, mt) end

-- ●void Duel.MoveTurnCount()  
-- 把回合数直接向前推进1回合。此操作会改变双方的客户端显示，以及加时赛的处理。  
function Duel.MoveTurnCount() end

-- ●Group Duel.GetCardsInZone(int player, int zone)  
-- 获取以player的视野，zone区域的所有卡。  
---@param player integer
---@param zone integer
---@return Group
function Duel.GetCardsInZone(player, zone) end

-- ●bool Duel.XyzSummonByRose(int player, Card xyzcard, Card c1, Card c2)  
-- 用c1和c2这2张卡为素材把XYZ卡XYZ召唤。XYZ召唤时，c1的等级当作和c2相同。  
---@param player integer
---@param xyzcard Card
---@param c1 Card
---@param c2 Card
---@return boolean
function Duel.XyzSummonByRose(player, xyzcard, c1, c2) end

-- ●void Duel.LoadScript(string filename)  
-- 加载文件名是filename的脚本。该函数会自动在脚本目录下搜索脚本文件进行加载。  
---@param filename string
function Duel.LoadScript(filename) end

-- ●int Duel.SelectField(int player, int flag1, int flag2, int count)  
-- 让玩家player选择场地。flag1为低位，flag2为高位，两者合并组成可选区域；count为可以选择的数量。  
-- 返回值是选择的场地。  
---@param player integer
---@param flag1 integer
---@param flag2 integer
---@param count integer
---@return integer
function Duel.SelectField(player, flag1, flag2, count) end

-- ●void Duel.LinkSummon(int player, Card pcard, Group mg|nil[, Card lcard, int minc, int maxc])  
-- 让玩家player以mg[中除lcard以外的最少minc，最多maxc张卡]为素材将pcard连接召唤。  
---@param player integer
---@param pcard Card
---@param mg? Group
---@param lcard? Card
---@param minc? integer
---@param maxc? integer
function Duel.LinkSummon(player, pcard, mg, lcard, minc, maxc) end

-- ●Card Duel.GetBattleMonster(int player)  
-- 返回由player操控的正处于战斗中的怪兽。如果没有战斗或没有目标则会返回nil。  
---@param player integer
---@return Card
function Duel.GetBattleMonster(player) end

-- ●bool Duel.IsSummonCancelable()  
-- 返回当前进行特殊召唤的行为是否可以回滚并撤销。  
---@return boolean
function Duel.IsSummonCancelable() end

-- ●Card|Group Duel.GrabSelectedCard()  
-- 返回由Duel.SetSelectedCard设置的卡片或卡片组。  
-- 单独使用没有意义，必须先用Duel.SetSelectedCard进行设置。  
---@return Card | Group
function Duel.GrabSelectedCard() end

-- ●void Duel.ClearOperationInfo(int chainc)  
-- 将chainc的OperationInfo清除。用于如堕天使复制并使用墓地效果之类，卡片效果不应当被响应的情况。  
---@param chainc integer
function Duel.ClearOperationInfo(chainc) end

-- ●bool Duel.IsPlayerCanMSet(int player[, int sumtype, Card scard])  
-- 检查玩家player是否可以[以sumtype的召唤方式将scard]盖放。  
-- 如果要加入后面的可选参数，则所有两个可选参数都必须加上。  
---@param player integer
---@param sumtype? integer
---@param scard? Card
---@return boolean
function Duel.IsPlayerCanMSet(player, sumtype, scard) end

-- ●bool Duel.IsPlayerCanSSet(int player[, Card scard])  
-- 检查玩家player是否可以[将scard]盖放。  
---@param player integer
---@param scard? Card
---@return boolean
function Duel.IsPlayerCanSSet(player, scard) end

-- ●bool Duel.IsPlayerCanAdditionalSummon(int player)  
-- 检查玩家player是否有通常召唤外的召唤次数。  
---@param player integer
---@return boolean
function Duel.IsPlayerCanAdditionalSummon(player) end

-- ●bool Duel.IsPlayerCanDiscardDeckAsCost(int player, int count)  
-- 检查玩家player是否能作为Cost把count张卡送去墓地。  
---@param player integer
---@param count integer
---@return boolean
function Duel.IsPlayerCanDiscardDeckAsCost(player, count) end

-- ●bool Duel.AdjustAll()  
-- 立刻刷新场地信息。  
---@return boolean
function Duel.AdjustAll() end

return Duel
