---@meta

---@class Card
local Card = {}

-- ●int[,int] Card.GetCode(Card c)  
-- 返回c的当前卡号（可能因为效果改变）  
---@param c Card
---@return integer
---@return integer | nil
function Card.GetCode(c) end

-- ●int Card.GetOriginalCode(Card c)  
-- 返回c的卡片记载的卡号  
---@param c Card
---@return integer
function Card.GetOriginalCode(c) end

-- ●int,int Card.GetOriginalCodeRule(Card c)  
-- 返回c规则上的卡号（这张卡规则上当作...使用）  
---@param c Card
---@return integer
---@return integer
function Card.GetOriginalCodeRule(c) end

-- ●int[,int,...] Card.GetFusionCode(Card c)  
-- 返回c作为融合素材时的卡号（包括c原本的卡号）  
---@param c Card
---@return integer
---@return integer | nil
---@return ... | nil
function Card.GetFusionCode(c) end

-- ●int[,int,...] Card.GetLinkCode(Card c)  
-- 返回c作为link素材的卡号（包括c原本的卡号）  
---@param c Card
---@return integer
---@return integer | nil
---@return ... | nil
function Card.GetLinkCode(c) end

-- ●bool Card.IsFusionCode(Card c, int code[, ...])  
-- 检查c作为融合素材时能否当作卡号为code的卡，额外参数是其他code  
---@param c Card
---@param code integer
---@param ...? any
---@return boolean
function Card.IsFusionCode(c, code, ...) end

-- ●bool Card.IsLinkCode(Card c, int code[,...])  
-- 检查c作为link素材时能否当作卡号为code的卡，额外参数是其他code  
---@param c Card
---@param code integer
---@param ...? any
---@return boolean
function Card.IsLinkCode(c, code, ...) end

-- ●bool Card.IsSetCard(Card c, int setname)  
-- 检查c是否是卡名含有setname的卡  
---@param c Card
---@param setname integer
---@return boolean
function Card.IsSetCard(c, setname) end

-- ●bool Card.IsOriginalSetCard(Card c, int setname)  
-- 检查c是否是原本卡名含有setname的卡  
---@param c Card
---@param setname integer
---@return boolean
function Card.IsOriginalSetCard(c, setname) end

-- ●bool Card.IsPreviousSetCard(Card c, int setname)  
-- 检查c位置变化之前是否是名字含有setname的卡  
---@param c Card
---@param setname integer
---@return boolean
function Card.IsPreviousSetCard(c, setname) end

-- ●bool Card.IsFusionSetCard(Card c, int setname)  
-- 检查c作为融合素材时能否当作名字含有setname的卡  
---@param c Card
---@param setname integer
---@return boolean
function Card.IsFusionSetCard(c, setname) end

-- ●bool Card.IsLinkSetCard(Card c, int setname)  
-- 检查c作为link素材时能否当作名字含有setname的卡  
---@param c Card
---@param setname integer
---@return boolean
function Card.IsLinkSetCard(c, setname) end

-- ●int Card.GetType(Card c)  
-- 返回c的当前类型  
---@param c Card
---@return integer
function Card.GetType(c) end

-- ●int Card.GetOriginalType(Card c)  
-- 返回c的卡片记载的类型  
---@param c Card
---@return integer
function Card.GetOriginalType(c) end

-- ●int Card.GetFusionType(Card c)  
-- 返回c用作融合素材时的类型（与GetType的区别在于对于魔陷区的怪兽卡，返回其原本类型）  
---@param c Card
---@return integer
function Card.GetFusionType(c) end

-- ●int Card.GetSynchroType(Card c)  
-- 返回c用作同调素材时的类型（与GetType的区别在于对于魔陷区的怪兽卡，返回其原本类型）  
---@param c Card
---@return integer
function Card.GetSynchroType(c) end

-- ●int Card.GetXyzType(Card c)  
-- 返回c用作同调素材时的类型（与GetType的区别在于对于魔陷区的怪兽卡，返回其原本类型）  
---@param c Card
---@return integer
function Card.GetXyzType(c) end

-- ●int Card.GetLinkType(Card c)  
-- 返回c用作link素材时的类型（与GetType的区别在于对于魔陷区的怪兽卡，返回其原本类型）  
---@param c Card
---@return integer
function Card.GetLinkType(c) end

-- ●int Card.GetLevel(Card c)  
-- 返回c的当前等级  
---@param c Card
---@return integer
function Card.GetLevel(c) end

-- ●int Card.GetRank(Card c)  
-- 返回c的当前阶级  
---@param c Card
---@return integer
function Card.GetRank(c) end

-- ●int Card.GetLink(Card c)  
-- 返回c的连接标记数量  
---@param c Card
---@return integer
function Card.GetLink(c) end

-- ●int Card.GetSynchroLevel(Card c, Card sc)  
-- 返回c的对于同调怪兽sc的同调用等级  
-- 此函数除了某些特定卡如调节支援士，返回值与Card.GetLevel(c)相同  
---@param c Card
---@param sc Card
---@return integer
function Card.GetSynchroLevel(c, sc) end

-- ●int Card.GetRitualLevel(Card c, Card rc)  
-- 返回c的对于仪式怪兽rc仪式解放等级  
-- 此函数除了某些特定卡如仪式供物，返回值与Card.GetLevel(c)相同  
---@param c Card
---@param rc Card
---@return integer
function Card.GetRitualLevel(c, rc) end

-- ●int Card.GetOriginalLevel(Card c)  
-- 返回c的卡片记载的等级  
---@param c Card
---@return integer
function Card.GetOriginalLevel(c) end

-- ●int Card.GetOriginalRank(Card c)  
-- 返回c的卡片记载的阶级  
---@param c Card
---@return integer
function Card.GetOriginalRank(c) end

-- ●bool Card.IsXyzLevel(Card c, Card xyzc, int lv)  
-- 检查c对于XYZ怪兽xyzc的XYZ用等级是否是lv  
---@param c Card
---@param xyzc Card
---@param lv integer
---@return boolean
function Card.IsXyzLevel(c, xyzc, lv) end

-- ●int Card.GetLeftScale(Card c)  
-- 返回c的左灵摆刻度  
---@param c Card
---@return integer
function Card.GetLeftScale(c) end

-- ●int Card.GetOriginalLeftScale(Card c)  
-- 返回c的原本的左灵摆刻度  
---@param c Card
---@return integer
function Card.GetOriginalLeftScale(c) end

-- ●int Card.GetRightScale(Card c)  
-- 返回c的右灵摆刻度  
---@param c Card
---@return integer
function Card.GetRightScale(c) end

-- ●int Card.GetCurrentScale(Card c)  
-- 返回c的当前灵摆刻度。如果在左灵摆区域则返回左刻度，在右灵摆区域或是不在灵摆区域则返回右刻度  
---@param c Card
---@return integer
function Card.GetCurrentScale(c) end

-- ●int Card.GetOriginalRightScale(Card c)  
-- 返回c的原本的右灵摆刻度  
---@param c Card
---@return integer
function Card.GetOriginalRightScale(c) end

-- ●bool Card.IsLinkMarker(Card c, int dir)  
-- 检查c是否是连接标记为 dir 的卡  
-- dir的值有：  
-- LINK_MARKER_BOTTOM_LEFT		=0x001 -- ↙  
-- LINK_MARKER_BOTTOM			=0x002 -- ↓  
-- LINK_MARKER_BOTTOM_RIGHT	=0x004 -- ↘  
-- LINK_MARKER_LEFT			=0x008 -- ←  
-- LINK_MARKER_RIGHT			=0x020 -- →  
-- LINK_MARKER_TOP_LEFT		=0x040 -- ↖  
-- LINK_MARKER_TOP				=0x080 -- ↑  
-- LINK_MARKER_TOP_RIGHT		=0x100 -- ↗  
---@param c Card
---@param dir integer
---@return boolean
function Card.IsLinkMarker(c, dir) end

-- ●Group Card.GetLinkedGroup(Card c)  
-- 返回c所连接区的卡片组  
---@param c Card
---@return Group
function Card.GetLinkedGroup(c) end

-- ●int Card.GetLinkedGroupCount(Card c)  
-- 返回c所连接区的怪兽卡数量  
---@param c Card
---@return integer
function Card.GetLinkedGroupCount(c) end

-- ●int Card.GetLinkedZone(Card c[, int player=c:GetControler()])  
-- 返回c的[以 player 来看的场上的]连接区域  
---@param c Card
---@param player? integer c:GetControler()
---@return integer
function Card.GetLinkedZone(c, player) end

-- ●Group Card.GetMutualLinkedGroup(Card c)  
-- 返回和c互相连接状态的卡片组  
---@param c Card
---@return Group
function Card.GetMutualLinkedGroup(c) end

-- ●int Card.GetMutualLinkedGroupCount(Card c)  
-- 返回和c互相连接状态的卡片组的数量  
---@param c Card
---@return integer
function Card.GetMutualLinkedGroupCount(c) end

-- ●int Card.GetMutualLinkedZone(Card c[, int player=c:GetControler()])  
-- 返回[以 player 来看的]与卡片 c 互相连接的卡 所在的区域  
---@param c Card
---@param player? integer c:GetControler()
---@return integer
function Card.GetMutualLinkedZone(c, player) end

-- ●bool Card.IsLinkState(Card c)  
-- 检查c是否是连接状态  
---@param c Card
---@return boolean
function Card.IsLinkState(c) end

-- ●bool Card.IsExtraLinkState(Card c)  
-- 检查c是否是额外连接状态  
---@param c Card
---@return boolean
function Card.IsExtraLinkState(c) end

-- ●Group Card.GetColumnGroup(Card c[,int left=0, int right=0])  
-- 返回与c同一纵列的c以外的卡片组，后2个参数会计算卡片c左边 left 列 和右边 right 列的所有卡，  
-- 比如c在中间的格子，那么 c:GetColumnGroup(2,2) 就相当于获取了除场地魔法以外的 场上的所有卡  
---@param c Card
---@param left? integer 0
---@param right? integer 0
---@return Group
function Card.GetColumnGroup(c, left, right) end

-- ●int Card.GetColumnGroupCount(Card c[,int left=0, int right=0])  
-- 用法同上，只是返回的是卡片的数量  
---@param c Card
---@param left? integer 0
---@param right? integer 0
---@return integer
function Card.GetColumnGroupCount(c, left, right) end

-- ●int Card.GetColumnZone(Card c, int location[, int left, int right, int player])  
-- 返回[以 player 来看的] location 范围内与 c 同一纵列[包含左边 left 列和右边 right 列]的区域，  
-- location 的值是 LOCATION_MZONE,LOCATION_SZONE,LOCATIOIN_ONFIELD  
---@param c Card
---@param location integer
---@param left? integer
---@param right? integer
---@param player? integer
---@return integer
function Card.GetColumnZone(c, location, left, right, player) end

-- ●bool Card.IsAllColumn(Card c)  
-- 检查与c同一纵列的区域是否全都有卡  
---@param c Card
---@return boolean
function Card.IsAllColumn(c) end

-- ●int Card.GetAttribute(Card c)  
-- 返回c的当前属性  
-- 注：对某些多属性怪兽如光与暗之龙，此函数的返回值可能是几个属性的组合值  
---@param c Card
---@return integer
function Card.GetAttribute(c) end

-- ●int Card.GetAttributeInGrave(Card c)  
-- 获得c在墓地里视为的属性  
---@param c Card
---@return integer
function Card.GetAttributeInGrave(c) end

-- ●int Card.GetOriginalAttribute(Card c)  
-- 返回c的卡片记载的属性  
---@param c Card
---@return integer
function Card.GetOriginalAttribute(c) end

-- ●int Card.GetFusionAttribute(Card c[, int player])  
-- 返回c[由player融合召唤时]用作融合素材时的属性  
---@param c Card
---@param player? integer
---@return integer
function Card.GetFusionAttribute(c, player) end

-- ●int Card.GetLinkAttribute(Card c[, int player])  
-- 返回c[由player连接召唤时]用作连接素材时的属性  
---@param c Card
---@param player? integer
---@return integer
function Card.GetLinkAttribute(c, player) end

-- ●int Card.GetRace(Card c)  
-- 返回c的当前种族  
-- 注：对某些多种族怪兽如动画效果的魔术猿，此函数的返回值可能是几个种族的组合值  
---@param c Card
---@return integer
function Card.GetRace(c) end

-- ●int Card.GetRaceInGrave(Card c)  
-- 返回c在墓地视为的种族  
---@param c Card
---@return integer
function Card.GetRaceInGrave(c) end

-- ●int Card.GetOriginalRace(Card c)  
-- 返回c的卡片记载的种族  
---@param c Card
---@return integer
function Card.GetOriginalRace(c) end

-- ●int Card.GetLinkRace(Card c[, int player])  
-- 返回c[由player连接召唤时]作为连接素材时的种族  
---@param c Card
---@param player? integer
---@return integer
function Card.GetLinkRace(c, player) end

-- ●int Card.GetAttack(Card c)  
-- 返回c的当前攻击力  
---@param c Card
---@return integer
function Card.GetAttack(c) end

-- ●int Card.GetBaseAttack(Card c)  
-- 返回c的原本攻击力  
---@param c Card
---@return integer
function Card.GetBaseAttack(c) end

-- ●int Card.GetTextAttack(Card c)  
-- 返回c的卡片记载的攻击力，返回值是负数表示是"?"  
---@param c Card
---@return integer
function Card.GetTextAttack(c) end

-- ●int Card.GetDefense(Card c)  
-- 返回c的当前守备力  
---@param c Card
---@return integer
function Card.GetDefense(c) end

-- ●int Card.GetBaseDefense(Card c)  
-- 返回c的原本守备力  
---@param c Card
---@return integer
function Card.GetBaseDefense(c) end

-- ●int Card.GetTextDefense(Card c)  
-- 返回c的卡片记载的守备力，返回值是负数表示是"?"  
---@param c Card
---@return integer
function Card.GetTextDefense(c) end

-- ●int[,int] Card.GetPreviousCodeOnField(Card c)  
-- 返回c位置变化之前在场上的卡号  
---@param c Card
---@return integer
---@return integer | nil
function Card.GetPreviousCodeOnField(c) end

-- ●int Card.GetPreviousTypeOnField(Card c)  
-- 返回c位置变化之前在场上的类型  
---@param c Card
---@return integer
function Card.GetPreviousTypeOnField(c) end

-- ●int Card.GetPreviousLevelOnField(Card c)  
-- 返回c位置变化之前在场上的等级  
---@param c Card
---@return integer
function Card.GetPreviousLevelOnField(c) end

-- ●int Card.GetPreviousRankOnField(Card c)  
-- 返回c位置变化之前在场上的阶级  
---@param c Card
---@return integer
function Card.GetPreviousRankOnField(c) end

-- ●int Card.GetPreviousAttributeOnField(Card c)  
-- 返回c位置变化之前在场上的属性  
---@param c Card
---@return integer
function Card.GetPreviousAttributeOnField(c) end

-- ●int Card.GetPreviousRaceOnField(Card c)  
-- 返回c位置变化之前在场上的种族  
---@param c Card
---@return integer
function Card.GetPreviousRaceOnField(c) end

-- ●int Card.GetPreviousAttackOnField(Card c)  
-- 返回c位置变化之前在场上的攻击力  
---@param c Card
---@return integer
function Card.GetPreviousAttackOnField(c) end

-- ●int Card.GetPreviousDefenseOnField(Card c)  
-- 返回c位置变化之前在场上的守备力  
---@param c Card
---@return integer
function Card.GetPreviousDefenseOnField(c) end

-- ●int Card.GetOwner(Card c)  
-- 返回c的持有者  
---@param c Card
---@return integer
function Card.GetOwner(c) end

-- ●int Card.GetControler(Card c)  
-- 返回c的当前控制者  
---@param c Card
---@return integer
function Card.GetControler(c) end

-- ●int Card.GetPreviousControler(Card c)  
-- 返回c的位置变化之前的控制者  
---@param c Card
---@return integer
function Card.GetPreviousControler(c) end

-- ●int Card.GetReason(Card c)  
-- 返回c的位置变化原因  
---@param c Card
---@return integer
function Card.GetReason(c) end

-- ●Card Card.GetReasonCard(Card c)  
-- 返回导致c的位置变化的卡  
-- 此函数仅在某卡被战斗破坏时，因为上级召唤被解放，或者成为特殊召唤使用的素材时有效  
---@param c Card
---@return Card
function Card.GetReasonCard(c) end

-- ●int Card.GetReasonPlayer(Card c)  
-- 返回导致c的位置变化的玩家  
---@param c Card
---@return integer
function Card.GetReasonPlayer(c) end

-- ●Effect Card.GetReasonEffect(Card c)  
-- 返回导致c的位置变化的效果  
---@param c Card
---@return Effect
function Card.GetReasonEffect(c) end

-- ●int Card.GetPosition(Card c)  
-- 返回c当前的表示形式  
---@param c Card
---@return integer
function Card.GetPosition(c) end

-- ●int Card.GetPreviousPosition(Card c)  
-- 返回c位置变化前的表示形式  
---@param c Card
---@return integer
function Card.GetPreviousPosition(c) end

-- ●int Card.GetBattlePosition(Card c)  
-- 返回c在本次战斗发生之前的表示形式  
---@param c Card
---@return integer
function Card.GetBattlePosition(c) end

-- ●int Card.GetLocation(Card c)  
-- 返回c当前的所在位置  
---@param c Card
---@return integer
function Card.GetLocation(c) end

-- ●int Card.GetPreviousLocation(Card c)  
-- 返回c位置变化前的所在的位置  
---@param c Card
---@return integer
function Card.GetPreviousLocation(c) end

-- ●int Card.GetSequence(Card c)  
-- 返回c在当前位置的序号  
-- 在场上时，序号代表所在的格子，从左往右分别是0-4，场地魔法格的序号为5，左右灵摆区域为6-7  
-- 在其它地方时，序号表示的是第几张卡，最下面的卡的序号为0  
---@param c Card
---@return integer
function Card.GetSequence(c) end

-- ●int Card.GetPreviousSequence(Card c)  
-- 返回c位置变化前的序号  
---@param c Card
---@return integer
function Card.GetPreviousSequence(c) end

-- ●int Card.GetSummonType(Card c)  
-- 返回c的召唤/特殊召唤的方式  
---@param c Card
---@return integer
function Card.GetSummonType(c) end

-- ●int Card.GetSummonLocation(Card c)  
-- 返回c的召唤/特殊召唤的位置  
---@param c Card
---@return integer
function Card.GetSummonLocation(c) end

-- ●int Card.GetSummonPlayer(Card c)  
-- 返回召唤/特殊召唤 c 上场的玩家  
---@param c Card
---@return integer
function Card.GetSummonPlayer(c) end

-- ●int Card.GetDestination(Card c)  
-- 返回c位置变化的目的地  
-- 此函数仅在处理位置转移代替效果时有效  
---@param c Card
---@return integer
function Card.GetDestination(c) end

-- ●int Card.GetLeaveFieldDest(Card c)  
-- 返回c离场时因改变去向的效果（如大宇宙）的目的地  
---@param c Card
---@return integer
function Card.GetLeaveFieldDest(c) end

-- ●int Card.GetTurnID(Card c)  
-- 返回c转移到当前位置的回合  
---@param c Card
---@return integer
function Card.GetTurnID(c) end

-- ●int Card.GetFieldID(Card c)  
-- 返回c转移到当前位置的时间标识  
-- 此数值唯一，越小表示c是越早出现在那个位置  
-- 卡片从里侧翻开也会改变此数值  
---@param c Card
---@return integer
function Card.GetFieldID(c) end

-- ●int Card.GetRealFieldID(Card c)  
-- 返回c转移到当前位置的真实的时间标识  
-- 卡片从里侧翻开不会改变此数值  
---@param c Card
---@return integer
function Card.GetRealFieldID(c) end

-- ●bool Card.IsCode(Card c, int code1[, int code2,...])  
-- 检查c的卡号是否是 code1[, 或者为 code2...]  
---@param c Card
---@param code1 integer
---@param code2? integer
---@param ...? any
---@return boolean
function Card.IsCode(c, code1, code2, ...) end

-- ●bool Card.IsType(Card c, int type)  
-- 检查c是否属于类型type  
---@param c Card
---@param type integer
---@return boolean
function Card.IsType(c, type) end

-- ●bool Card.IsExtraDeckMonster(Card c)  
-- 检查c原本是否为融合·同调·XYZ·连接怪兽。这个函数只检查类型，不关心被检查的怪兽的现状。  
---@param c Card
---@return boolean
function Card.IsExtraDeckMonster(c) end

-- ●bool Card.IsFusionType(Card c, int type)  
-- 检查c用作融合素材时是否属于类型type（与IsType的区别在于对于魔陷区的怪兽卡，用其原本类型作判断）  
---@param c Card
---@param type integer
---@return boolean
function Card.IsFusionType(c, type) end

-- ●bool Card.IsSynchroType(Card c, int type)  
-- 检查c用作同调素材时是否属于类型type（与IsType的区别在于对于魔陷区的怪兽卡，用其原本类型作判断）  
---@param c Card
---@param type integer
---@return boolean
function Card.IsSynchroType(c, type) end

-- ●bool Card.IsXyzType(Card c, int type)  
-- 检查c用作XYZ素材时是否属于类型type（与IsType的区别在于对于魔陷区的怪兽卡，用其原本类型作判断）  
---@param c Card
---@param type integer
---@return boolean
function Card.IsXyzType(c, type) end

-- ●bool Card.IsLinkType(Card c, int type)  
-- 检查c用作连接素材时是否属于类型type（与IsType的区别在于对于魔陷区的怪兽卡，用其原本类型作判断）  
---@param c Card
---@param type integer
---@return boolean
function Card.IsLinkType(c, type) end

-- ●bool Card.IsLevel(Card c, int level1[, int level2,...])  
-- 检查c是否是等级 level1[, 或者为 level2...]  
---@param c Card
---@param level1 integer
---@param level2? integer
---@param ...? any
---@return boolean
function Card.IsLevel(c, level1, level2, ...) end

-- ●bool Card.IsRank(Card c, int rank1[, int rank2,...])  
-- 检查c是否是阶级 rank1[, 或者为 rank2...]  
---@param c Card
---@param rank1 integer
---@param rank2? integer
---@param ...? any
---@return boolean
function Card.IsRank(c, rank1, rank2, ...) end

-- ●bool Card.IsLink(Card c, int link1[, int link2,...])  
-- 检查c的连接标记数量是否是 link1[, 或者为 link2...]  
---@param c Card
---@param link1 integer
---@param link2? integer
---@param ...? any
---@return boolean
function Card.IsLink(c, link1, link2, ...) end

-- ●bool Card.IsAttack(Card c, int atk1[, int atk2,...])  
-- 检查c的攻击力是否是 atk1[, 或者为 atk2...]，如果c不是怪兽卡，或者不在 LOCATION_MZONE 则都返回false  
---@param c Card
---@param atk1 integer
---@param atk2? integer
---@param ...? any
---@return boolean
function Card.IsAttack(c, atk1, atk2, ...) end

-- ●bool Card.IsDefense(Card c, int def[, int atk2,...])  
-- 检查c的守备力是否是 def1[, 或者为 def2...]，如果c不是怪兽卡，或者不在 LOCATION_MZONE 则都返回false  
---@param c Card
---@param def integer
---@param atk2? integer
---@param ...? any
---@return boolean
function Card.IsDefense(c, def, atk2, ...) end

-- ●bool Card.IsRace(Card c, int race)  
-- 检查c是否属于种族race  
---@param c Card
---@param race integer
---@return boolean
function Card.IsRace(c, race) end

-- ●bool Card.IsLinkRace(Card c, int race[, int player])  
-- 检查c[由player连接召唤时]用作连接素材时是否属于种族race  
---@param c Card
---@param race integer
---@param player? integer
---@return boolean
function Card.IsLinkRace(c, race, player) end

-- ●bool Card.IsAttribute(Card c, int attribute)  
-- 检查c是否属于属性attribute  
---@param c Card
---@param attribute integer
---@return boolean
function Card.IsAttribute(c, attribute) end

-- ●bool Card.IsFusionAttribute(Card c, int attribute[, int player])  
-- 检查c[由player融合召唤时]用作融合素材是否属于属性attribute  
---@param c Card
---@param attribute integer
---@param player? integer
---@return boolean
function Card.IsFusionAttribute(c, attribute, player) end

-- ●bool Card.IsLinkAttribute(Card c, int attribute[, int player])  
-- 检查c[由player连接召唤时]用作连接素材是否属于属性attribute  
---@param c Card
---@param attribute integer
---@param player? integer
---@return boolean
function Card.IsLinkAttribute(c, attribute, player) end

-- ●bool Card.IsReason(Card c, int reason)  
-- 检查c是否包含原因reason  
---@param c Card
---@param reason integer
---@return boolean
function Card.IsReason(c, reason) end

-- ●bool Card.SetReason(Card c, int reason)  
-- 设置c来到当前位置的原因为reason  
---@param c Card
---@param reason integer
---@return boolean
function Card.SetReason(c, reason) end

-- ●bool Card.IsSummonType(Card c, int sumtype)  
-- 检查c的召唤类型是否是sumtype  
---@param c Card
---@param sumtype integer
---@return boolean
function Card.IsSummonType(c, sumtype) end

-- ●bool Card.IsStatus(Card c, int status)  
-- 检查c是否包含某个状态码  
---@param c Card
---@param status integer
---@return boolean
function Card.IsStatus(c, status) end

-- ●bool Card.IsNotTuner(Card c)  
-- 检查c是否可以当成非调整来使用  
---@param c Card
---@return boolean
function Card.IsNotTuner(c) end

-- ●void Card.SetStatus(Card c, int state, bool enable)  
-- 给c设置或者取消状态码  
-- 除非妳清楚的了解每个状态码的含意，否则不要轻易使用此函数  
---@param c Card
---@param state integer
---@param enable boolean
function Card.SetStatus(c, state, enable) end

-- ●bool Card.IsDualState(Card c)  
-- 检查c属否处于再召唤状态  
---@param c Card
---@return boolean
function Card.IsDualState(c) end

-- ●void Card.EnableDualState(Card c)  
-- 把c设置成再召唤状态  
---@param c Card
function Card.EnableDualState(c) end

-- ●void Card.SetTurnCounter(Card c, int counter)  
-- 设置c的回合计数器（光之护封剑等）  
---@param c Card
---@param counter integer
function Card.SetTurnCounter(c, counter) end

-- ●int Card.GetTurnCounter(Card c)  
-- 返回c的回合计数器  
---@param c Card
---@return integer
function Card.GetTurnCounter(c) end

-- ●void Card.SetMaterial(Card c, Group g)  
-- 把g中的所有卡作为c的素材（上级召唤，特殊召唤）  
---@param c Card
---@param g Group
function Card.SetMaterial(c, g) end

-- ●Group Card.GetMaterial(Card c)  
-- 返回c出场使用的素材  
---@param c Card
---@return Group
function Card.GetMaterial(c) end

-- ●int Card.GetMaterialCount(Card c)  
-- 返回c出场使用的素材数量  
---@param c Card
---@return integer
function Card.GetMaterialCount(c) end

-- ●Group Card.GetEquipGroup(Card c)  
-- 返回c当前装备着的卡片组  
---@param c Card
---@return Group
function Card.GetEquipGroup(c) end

-- ●int Card.GetEquipCount(Card c)  
-- 返回c当前装备着的卡片数量  
---@param c Card
---@return integer
function Card.GetEquipCount(c) end

-- ●Card Card.GetEquipTarget(Card c)  
-- 返回c当前的装备对象  
---@param c Card
---@return Card
function Card.GetEquipTarget(c) end

-- ●Card Card.GetPreviousEquipTarget(Card c)  
-- 返回c之前的装备对象  
---@param c Card
---@return Card
function Card.GetPreviousEquipTarget(c) end

-- ●bool Card.CheckEquipTarget(Card c1, Card c2)  
-- 检查c2是否是c1的正确的装备对象  
---@param c1 Card
---@param c2 Card
---@return boolean
function Card.CheckEquipTarget(c1, c2) end

-- ●int Card.GetUnionCount(Card c)  
-- 返回c当前装备的同盟卡数量  
---@param c Card
---@return integer
function Card.GetUnionCount(c) end

-- ●Card Card.CheckUnionTarget(Card c, Card ec)  
-- 检查ec是否为c的有效同盟装备对象。会检查EFFECT_UNION_LIMIT影响和新旧同盟影响。  
---@param c Card
---@param ec Card
---@return Card
function Card.CheckUnionTarget(c, ec) end

-- ●Group Card.GetOverlayGroup(Card c)  
-- 返回c当前叠放着的卡片组  
---@param c Card
---@return Group
function Card.GetOverlayGroup(c) end

-- ●int Card.GetOverlayCount(Card c)  
-- 返回c当前叠放着的卡片数量  
---@param c Card
---@return integer
function Card.GetOverlayCount(c) end

-- ●Card Card.GetOverlayTarget(Card c)  
-- 返回以c为XYZ素材的卡  
---@param c Card
---@return Card
function Card.GetOverlayTarget(c) end

-- ●bool Card.CheckRemoveOverlayCard(Card c, int player, int count, int reason)  
-- 检查玩家player能否以reason为原因，至少移除c叠放的count张卡  
---@param c Card
---@param player integer
---@param count integer
---@param reason integer
---@return boolean
function Card.CheckRemoveOverlayCard(c, player, count, reason) end

-- ●int Card.RemoveOverlayCard(Card c, int player, int min, int max, int reason)  
-- 以reason为原因，让玩家player移除c叠放的min-max张卡，返回值表示是否成功  
---@param c Card
---@param player integer
---@param min integer
---@param max integer
---@param reason integer
---@return integer
function Card.RemoveOverlayCard(c, player, min, max, reason) end

-- ●Group Card.GetAttackedGroup(Card c)  
-- 返回c本回合攻击过的卡片组  
---@param c Card
---@return Group
function Card.GetAttackedGroup(c) end

-- ●int Card.GetAttackedGroupCount(Card c)  
-- 返回c本回合攻击过的卡片数量  
---@param c Card
---@return integer
function Card.GetAttackedGroupCount(c) end

-- ●int Card.GetAttackedCount(Card c)  
-- 返回c本回合攻击过的次数  
-- 注：如果此值与上一个函数的返回值不同，那么说明此卡本回合进行过直接攻击  
---@param c Card
---@return integer
function Card.GetAttackedCount(c) end

-- ●Group Card.GetBattledGroup(Card c)  
-- 返回与c本回合进行过战斗的卡片组  
-- 进行过战斗指发生过伤害的计算，用于剑斗兽等卡的判定  
---@param c Card
---@return Group
function Card.GetBattledGroup(c) end

-- ●int Card.GetBattledGroupCount(Card c)  
-- 返回与c本回合进行过战斗的的卡片数量  
---@param c Card
---@return integer
function Card.GetBattledGroupCount(c) end

-- ●int Card.GetAttackAnnouncedCount(Card c)  
-- 返回c本回合攻击宣言的次数  
-- 注：攻击被无效不会被计入攻击过的次数，但是会计入攻击宣言的次数  
---@param c Card
---@return integer
function Card.GetAttackAnnouncedCount(c) end

-- ●bool Card.IsDirectAttacked(Card c)  
-- 检查c是否直接攻击过  
---@param c Card
---@return boolean
function Card.IsDirectAttacked(c) end

-- ●void Card.SetCardTarget(Card c1, Card c2)  
-- 把c2作为c1的永续对象  
-- c1和c2的联系会在c1或c2任意一卡离场或变成里侧表示时reset  
---@param c1 Card
---@param c2 Card
function Card.SetCardTarget(c1, c2) end

-- ●Group Card.GetCardTarget(Card c)  
-- 返回c当前所有的永续对象  
---@param c Card
---@return Group
function Card.GetCardTarget(c) end

-- ●Card Card.GetFirstCardTarget(Card c)  
-- 返回c当前第一个永续对象，没有则返回 nil  
---@param c Card
---@return Card
function Card.GetFirstCardTarget(c) end

-- ●int Card.GetCardTargetCount(Card c)  
-- 返回c当前的永续对象的数量  
---@param c Card
---@return integer
function Card.GetCardTargetCount(c) end

-- ●bool Card.IsHasCardTarget(Card c1, Card c2)  
-- 检查c2是否取c1为永续对象  
---@param c1 Card
---@param c2 Card
---@return boolean
function Card.IsHasCardTarget(c1, c2) end

-- ●void Card.CancelCardTarget(Card c1, Card c2)  
-- 取消c2为c1的永续对象  
---@param c1 Card
---@param c2 Card
function Card.CancelCardTarget(c1, c2) end

-- ●Group Card.GetOwnerTarget(Card c)  
-- 返回取c作为永续对象的所有卡  
---@param c Card
---@return Group
function Card.GetOwnerTarget(c) end

-- ●int Card.GetOwnerTargetCount(Card c)  
-- 返回取c作为永续对象的卡的数量  
---@param c Card
---@return integer
function Card.GetOwnerTargetCount(c) end

-- ●Effect,... Card.GetActivateEffect(Card c)  
-- 返回c的“卡片发动”的效果，即类型为EFFECT_TYPE_ACTIVATE的效果  
-- 仅对魔法和陷阱有效  
---@param c Card
---@return Effect
---@return ...
function Card.GetActivateEffect(c) end

-- ●Effect[,Group,int,int,Effect,int,int] Card.CheckActivateEffect(Card c, bool neglect_con, bool neglect_cost, bool copy_info)  
-- 返回c的可以发动时机正确的“卡的发动”的效果，neglect_con=true则无视发动条件，neglect_cost=true则无视发动cost  
-- copy_info=false或者自由时点的效果则只返回这个效果 e  
-- 否则还返回这个效果的触发时点的信息 e,eg,ep,ev,re,r,rp  
---@param c Card
---@param neglect_con boolean
---@param neglect_cost boolean
---@param copy_info boolean
---@return Effect
---@return Group | nil
---@return integer | nil
---@return integer | nil
---@return Effect | nil
---@return integer | nil
---@return integer | nil
function Card.CheckActivateEffect(c, neglect_con, neglect_cost, copy_info) end

-- ●void|Effect[,function,int,int,int] Card.GetTunerLimit(Card c)  
-- 如果卡片 c 受到同调素材限制效果 EFFECT_TUNER_MATERIAL_LIMIT 影响，则返回 Effect e,function target,int value,int min,int max ;否则返回nil  
---@param c Card
---@return Effect
---@return function | nil
---@return integer | nil
---@return integer | nil
---@return integer | nil
function Card.GetTunerLimit(c) end

-- ●void|Effect[,function,int,int] Card.GetHandSynchro(Card c)  
-- 如果卡片 c 受到手卡同调效果 EFFECT_HAND_SYNCHRO 影响，则返回 Effect e,function target,int min,int max ;否则返回nil  
---@param c Card
---@return Effect
---@return function | nil
---@return integer | nil
---@return integer | nil
function Card.GetHandSynchro(c) end

-- ●... Card.IsHasEffect(Card c, int code)  
-- 检查c是否受到效果种类是code的效果的影响  
-- 没有则返回nil  
-- 有则返回那些效果  
---@param c Card
---@param code integer
---@return ...
function Card.IsHasEffect(c, code) end

-- ●void Card.ResetEffect(Card c, int reset_code, int reset_type)  
-- 以重置类型为reset_type、重置种类为reset_code手动重置c受到的效果的影响  
-- reset_type只能是以下类型，对应的重置种类为  
-- RESET_EVENT       发生事件重置        reset_code为事件  
-- RESET_PHASE       阶段结束重置        reset_code为阶段  
-- RESET_CODE        重置指定code的效果  reset_code为效果的种类code，只能重置EFFECT_TYPE_SINGLE的永续型效果  
-- RESET_COPY        重置复制的效果      reset_code为copy_id  
-- RESET_CARD        重置卡片的效果      reset_code为效果owner的卡号  
---@param c Card
---@param reset_code integer
---@param reset_type integer
function Card.ResetEffect(c, reset_code, reset_type) end

-- ●int Card.GetEffectCount(Card c, int code)  
-- 返回c受到影响的种类是code的效果的数量  
---@param c Card
---@param code integer
---@return integer
function Card.GetEffectCount(c, code) end

-- ●Effect Card.RegisterFlagEffect(Card c, int code, int reset_flag, int property, int reset_count[, int label, int desc])  
-- 为c注册一个标识用效果  
-- 注：注册给卡的标识用效果不会用于系统，  
-- 即使code与内置效果code重合也不会影响，  
-- 并且类型总是EFFECT_TYPE_SINGLE，reset方法，property和一般的效果相同，  
-- 并且不会无效化，不受卡的免疫效果影响  
---@param c Card
---@param code integer
---@param reset_flag integer
---@param property integer
---@param reset_count integer
---@param label? integer
---@param desc? integer
---@return Effect
function Card.RegisterFlagEffect(c, code, reset_flag, property, reset_count, label, desc) end

-- ●int Card.GetFlagEffect(Card c, int code)  
-- 返回c的种类是code的标识效果的数量  
---@param c Card
---@param code integer
---@return integer
function Card.GetFlagEffect(c, code) end

-- ●void Card.ResetFlagEffect(Card c, int code)  
-- 手动清除c的种类是code的标识效果  
---@param c Card
---@param code integer
function Card.ResetFlagEffect(c, code) end

-- ●bool Card.SetFlagEffectLabel(Card c, int code, int label)  
-- 返回c是否存在种类为code的标识效果，并设置其Label属性为label  
---@param c Card
---@param code integer
---@param label integer
---@return boolean
function Card.SetFlagEffectLabel(c, code, label) end

-- ●int[,...] Card.GetFlagEffectLabel(Card c, int code)  
-- 返回c的种类为code的标识效果的Label(数量可能不止一个)，没有此效果则返回nil  
---@param c Card
---@param code integer
---@return integer
---@return ... | nil
function Card.GetFlagEffectLabel(c, code) end

-- ●void Card.CreateRelation(Card c1, Card c2, int reset_flag)  
-- 为c1建立与c2的联系，此联系仅会由于c1发生RESET_EVENT的事件reset  
---@param c1 Card
---@param c2 Card
---@param reset_flag integer
function Card.CreateRelation(c1, c2, reset_flag) end

-- ●void Card.ReleaseRelation(Card c1, Card c2)  
-- 手动释放c1对于c2的联系  
---@param c1 Card
---@param c2 Card
function Card.ReleaseRelation(c1, c2) end

-- ●void Card.CreateEffectRelation(Card c, Effect e)  
-- 为卡片c和效果e建立联系  
---@param c Card
---@param e Effect
function Card.CreateEffectRelation(c, e) end

-- ●void Card.ReleaseEffectRelation(Card c,Effect e)  
-- 手动释放c与效果e的联系  
---@param c Card
---@param e Effect
function Card.ReleaseEffectRelation(c, e) end

-- ●void Card.ClearEffectRelation(Card c)  
-- 清空c所有联系的效果  
---@param c Card
function Card.ClearEffectRelation(c) end

-- ●bool Card.IsRelateToEffect(Card c, Effect e)  
-- 检查c是否和效果e有联系  
-- 注：每次发动进入连锁的效果时，发动效果的卡，以及发动效果时指定的对象  
-- （用Duel.SetTargetCard或者Duel.SelectTarget指定的，包括取对象和不取对象）  
-- 会自动与那个效果建立联系，一旦离场，联系会重置  
---@param c Card
---@param e Effect
---@return boolean
function Card.IsRelateToEffect(c, e) end

-- ●bool Card.IsRelateToChain(Card c, int chainc)  
-- 检查c是否和连锁chainc有联系  
-- 注：每次发动进入连锁的效果时，发动效果的卡，以及发动效果时指定的对象  
-- （用Duel.SetTargetCard或者Duel.SelectTarget指定的，包括取对象和不取对象）  
-- 会自动与那个效果建立联系，一旦离场，联系会重置  
---@param c Card
---@param chainc integer
---@return boolean
function Card.IsRelateToChain(c, chainc) end

-- ●bool Card.IsRelateToCard(Card c1, Card c2)  
-- 检查c1是否和c2有联系  
---@param c1 Card
---@param c2 Card
---@return boolean
function Card.IsRelateToCard(c1, c2) end

-- ●bool Card.IsRelateToBattle(Card c)  
-- 检查c是否和本次战斗关联  
-- 注：此效果通常用于伤害计算后伤害阶段结束前，用于检查战斗的卡是否离场过  
---@param c Card
---@return boolean
function Card.IsRelateToBattle(c) end

-- ●int Card.CopyEffect(Card c, int code, int reset_flag[, int reset_count=1])  
-- 为c添加卡号是code的卡的可复制的效果，并且添加额外的reset条件  
-- 返回值是表示复制效果的代号id  
---@param c Card
---@param code integer
---@param reset_flag integer
---@param reset_count? integer 1
---@return integer
function Card.CopyEffect(c, code, reset_flag, reset_count) end

-- ●int Card.ReplaceEffect(Card c, int code, int reset_flag[, int reset_count=1])  
-- 把c的效果替换为卡号是code的卡的效果，并且添加额外的reset条件  
-- 返回值是表示替换效果的代号id  
---@param c Card
---@param code integer
---@param reset_flag integer
---@param reset_count? integer 1
---@return integer
function Card.ReplaceEffect(c, code, reset_flag, reset_count) end

-- ●void Card.EnableReviveLimit(Card c)  
-- 为c添加苏生限制  
---@param c Card
function Card.EnableReviveLimit(c) end

-- ●void Card.CompleteProcedure(Card c)  
-- 使c完成正规的召唤手续  
---@param c Card
function Card.CompleteProcedure(c) end

-- ●bool Card.IsDisabled(Card c)  
-- 检查c是否处于无效状态  
---@param c Card
---@return boolean
function Card.IsDisabled(c) end

-- ●bool Card.IsDestructable(Card c[, Effect e])  
-- 检查c是否是可被[效果 e]破坏的  
---@param c Card
---@param e? Effect
---@return boolean
function Card.IsDestructable(c, e) end

-- ●bool Card.IsSummonableCard(Card c)  
-- 检查c是否是可通常召唤的卡  
---@param c Card
---@return boolean
function Card.IsSummonableCard(c) end

-- ●bool Card.IsSummonLocation(Card c, int loc)  
-- 检查c召唤·特殊召唤的位置是否为loc  
---@param c Card
---@param loc integer
---@return boolean
function Card.IsSummonLocation(c, loc) end

-- ●bool Card.IsSummonPlayer(Card c, int player)  
-- 检查将c召唤·特殊召唤的玩家是否为player  
---@param c Card
---@param player integer
---@return boolean
function Card.IsSummonPlayer(c, player) end

-- ●bool Card.IsFusionSummonableCard(Card c[, int sum_type])  
-- 检查c是否是可[用 sum_type 方式]融合召唤的卡  
---@param c Card
---@param sum_type? integer
---@return boolean
function Card.IsFusionSummonableCard(c, sum_type) end

-- ●bool Card.IsSpecialSummonable(Card c[, int sum_type])  
-- 检查是否可以对c[用 sum_type 方式]进行特殊召唤手续  
---@param c Card
---@param sum_type? integer
---@return boolean
function Card.IsSpecialSummonable(c, sum_type) end

-- ●bool Card.IsSynchroSummonable(Card c ,Card tuner|nil[, Group mg])  
-- 检查是否可以以tuner作为调整，场上的卡[或mg]为同调素材对c进行同调召唤手续  
-- 如果tuner是nil，此函数与Card.IsSpecialSummonable作用相同  
---@param c Card
---@param tuner? Card
---@param mg? Group
---@return boolean
function Card.IsSynchroSummonable(c, tuner, mg) end

-- ●bool Card.IsXyzSummonable(Card c, Group mg|nil[, int min=0, int max=0])  
-- 检查是否可以在场上的卡[或mg][中选出 min-max 个XYZ素材]对c进行XYZ召唤手续  
-- 如果mg为nil，此函数与 c:IsSpecialSummonable(SUMMON_TYPE_XYZ)作用相同  
---@param c Card
---@param mg? Group
---@param min? integer 0
---@param max? integer 0
---@return boolean
function Card.IsXyzSummonable(c, mg, min, max) end

-- ●bool Card.IsSummonable(Card c, bool ignore_count, Effect e|nil[, int min=0, int zone=0x1f])  
-- 检查c是否可以进行通常召唤（不包含通常召唤的set)，ignore_count=true则不检查召唤次数限制  
-- e~=nil则检查c是否可以以效果e进行通常召唤，min表示至少需要的祭品数（用于区分妥协召唤与上级召唤）,zone 表示必须要召唤到的区域  
---@param c Card
---@param ignore_count boolean
---@param e? Effect
---@param min? integer 0
---@param zone? integer 0x1f
---@return boolean
function Card.IsSummonable(c, ignore_count, e, min, zone) end

-- ●bool Card.IsMSetable(Card c, bool ignore_count, Effect e|nil[, int min=0, int zone=0x1f])  
-- 检查c是否可进行通常召唤的set，ignore_count=true则不检查召唤次数限制  
-- e~=nil则检查c是否可以以效果e进行通常召唤的set，min表示至少需要的祭品数（用于区分妥协召唤set与上级召唤set）,zone 表示必须要放置到的区域  
---@param c Card
---@param ignore_count boolean
---@param e? Effect
---@param min? integer 0
---@param zone? integer 0x1f
---@return boolean
function Card.IsMSetable(c, ignore_count, e, min, zone) end

-- ●bool Card.IsSSetable(Card c[, bool ignore_field=false])  
-- 检查c是否可以set到魔法陷阱区，ignore_field=true则无视魔陷区格子是否能使用的限制  
---@param c Card
---@param ignore_field? boolean false
---@return boolean
function Card.IsSSetable(c, ignore_field) end

-- ●bool Card.IsCanBeSpecialSummoned(Card c, Effect e, int sumtype, int sumplayer, bool nocheck, bool nolimit[, int sumpos=POS_FACEUP, int toplayer=sumplayer, int zone=0xff])  
-- 检查c是否可以被玩家sumplayer用效果e[以sumtype方式和sumpos表示形式]特殊召唤[到玩家 toplayer 的区域zone]  
-- 如果nocheck是true则不检查c的召唤条件，如果nolimit是true则不检查c的苏生限制  
---@param c Card
---@param e Effect
---@param sumtype integer
---@param sumplayer integer
---@param nocheck boolean
---@param nolimit boolean
---@param sumpos? integer POS_FACEUP
---@param toplayer? integer sumplayer
---@param zone? integer 0xff
---@return boolean
function Card.IsCanBeSpecialSummoned(c, e, sumtype, sumplayer, nocheck, nolimit, sumpos, toplayer, zone) end

-- ●bool Card.IsAbleToHand(Card c)  
-- 检查c是否可以送去手卡  
-- 注：仅当卡片或者玩家受到“不能加入手卡”的效果的影响时（如雷王）此函数才返回false  
---@param c Card
---@return boolean
function Card.IsAbleToHand(c) end

-- ●bool Card.IsAbleToDeck(Card c)  
-- 检查c是否可以送去卡组  
---@param c Card
---@return boolean
function Card.IsAbleToDeck(c) end

-- ●bool Card.IsAbleToExtra(Card c)  
-- 检查c是否可以送去额外卡组  
-- 对于非融合、同调等额外怪兽或者非灵摆怪兽此函数均返回false  
---@param c Card
---@return boolean
function Card.IsAbleToExtra(c) end

-- ●bool Card.IsAbleToGrave(Card c)  
-- 检查c是否可以送去墓地  
---@param c Card
---@return boolean
function Card.IsAbleToGrave(c) end

-- ●bool Card.IsAbleToRemove(Card c[, int player])  
-- 检查c是否可以被玩家player除外  
---@param c Card
---@param player? integer
---@return boolean
function Card.IsAbleToRemove(c, player) end

-- ●bool Card.IsAbleToHandAsCost(Card c)  
-- 检查c是否可以作为cost送去手卡  
-- 注：此函数会在Card.IsAbleToHand的基础上追加检测c的实际目的地  
-- 当c送往手卡会被送去其它地方时（如缩退回路适用中，或者c是融合、同调 等额外怪兽的一种），此函数返回false  
---@param c Card
---@return boolean
function Card.IsAbleToHandAsCost(c) end

-- ●bool Card.IsAbleToDeckAsCost(Card c)  
-- 检查c是否可以作为cost送去卡组  
---@param c Card
---@return boolean
function Card.IsAbleToDeckAsCost(c) end

-- ●bool Card.IsAbleToExtraAsCost(Card c)  
-- 检查c是否可以作为cost送去额外卡组，主卡组的灵摆卡会返回false  
---@param c Card
---@return boolean
function Card.IsAbleToExtraAsCost(c) end

-- ●bool Card.IsAbleToDeckOrExtraAsCost(Card c)  
-- 检查c是否可以作为cost送去卡组或额外卡组（用于新宇侠、剑斗兽融合怪兽的召唤手续检测）等价于 (c:IsAbleToDeckAsCost() or c:IsAbleToExtraAsCost())  
---@param c Card
---@return boolean
function Card.IsAbleToDeckOrExtraAsCost(c) end

-- ●bool Card.IsAbleToGraveAsCost(Card c)  
-- 检查c是否可以作为cost送去墓地  
---@param c Card
---@return boolean
function Card.IsAbleToGraveAsCost(c) end

-- ●bool Card.IsAbleToRemoveAsCost(Card c)  
-- 检查c是否可以作为cost除外  
---@param c Card
---@return boolean
function Card.IsAbleToRemoveAsCost(c) end

-- ●bool Card.IsAbleToDecreaseAttackAsCost(Card c[, int atk])  
-- 检查c是否可以作为cost降低[atk 数值]攻击力  
-- 若c不是怪兽或者不在怪兽区，或是里侧表示，或受到 EFFECT_SET_ATTACK_FINAL(邪神 恐惧根源等) or EFFECT_REVERSE_UPDATE(天邪鬼的诅咒)效果影响，或是攻击力小于atk，则返回false  
---@param c Card
---@param atk? integer
---@return boolean
function Card.IsAbleToDecreaseAttackAsCost(c, atk) end

-- ●bool Card.IsAbleToDecreaseDefenseAsCost(Card c[, int def])  
-- 检查c是否可以作为cost降低[def 数值]守备力  
-- 若c不是怪兽或者不在怪兽区，或是里侧表示，或受到 EFFECT_SET_DEFENSE_FINAL(邪神 恐惧根源等) or EFFECT_REVERSE_UPDATE(天邪鬼的诅咒)效果影响，或是守备力小于def，则返回false  
---@param c Card
---@param def? integer
---@return boolean
function Card.IsAbleToDecreaseDefenseAsCost(c, def) end

-- ●bool Card.IsReleasable(Card c)  
-- 检查c是否可以被解放（非上级召唤用）  
---@param c Card
---@return boolean
function Card.IsReleasable(c) end

-- ●bool Card.IsReleasableByEffect(Card c)  
-- 检查c是否可以被效果解放  
---@param c Card
---@return boolean
function Card.IsReleasableByEffect(c) end

-- ●bool Card.IsDiscardable(Card c[, int reason=REASON_COST])  
-- 检查c是否可以以reason原因丢弃  
-- 注：此函数仅用于检测，  
-- 以REASON_DISCARD作为原因把一张手卡送墓并不会导致那张卡不能丢弃  
---@param c Card
---@param reason? integer REASON_COST
---@return boolean
function Card.IsDiscardable(c, reason) end

-- ●bool Card.IsAttackable(Card c)  
-- 检查c是否可以攻击  
---@param c Card
---@return boolean
function Card.IsAttackable(c) end

-- ●bool Card.IsChainAttackable(Card c[, int ac = 2, bool monsteronly = false])  
-- 检查c是否可以连续攻击，c的攻击宣言次数>=ac则返回false  
-- monsteronly = true 则表示只能对怪兽攻击  
-- 注：当c因为闪光之双剑等效果进行过多次攻击之后此函数返回false  
---@param c Card
---@param ac? integer 2
---@param monsteronly? boolean false
---@return boolean
function Card.IsChainAttackable(c, ac, monsteronly) end

-- ●bool Card.IsFaceup(Card c)  
-- 检查c是否是表侧表示  
---@param c Card
---@return boolean
function Card.IsFaceup(c) end

-- ●bool Card.IsAttackPos(Card c)  
-- 检查c是否是攻击表示  
---@param c Card
---@return boolean
function Card.IsAttackPos(c) end

-- ●bool Card.IsFacedown(Card c)  
-- 检查c是否是里侧表示  
---@param c Card
---@return boolean
function Card.IsFacedown(c) end

-- ●bool Card.IsDefensePos(Card c)  
-- 检查c是否是守备表示  
---@param c Card
---@return boolean
function Card.IsDefensePos(c) end

-- ●bool Card.IsPosition(Card c, int pos)  
-- 检查c是否是表示形式pos  
---@param c Card
---@param pos integer
---@return boolean
function Card.IsPosition(c, pos) end

-- ●bool Card.IsPreviousControler(Card c,int player)  
-- 检查c的上一个控制者是否为player  
---@param c Card
---@param player integer
---@return boolean
function Card.IsPreviousControler(c, player) end

-- ●bool Card.IsPreviousPosition(Card c, int pos)  
-- 检查c位置变化之前是否是表示形式pos  
---@param c Card
---@param pos integer
---@return boolean
function Card.IsPreviousPosition(c, pos) end

-- ●bool Card.IsControler(Card c, int controler)  
-- 检查c的当前控制着是否是controler  
---@param c Card
---@param controler integer
---@return boolean
function Card.IsControler(c, controler) end

-- ●bool Card.IsOnField(Card c)  
-- 检查c是否在场  
-- 注：当怪兽召唤，反转召唤，特殊召唤时召唤成功之前，此函数返回false  
---@param c Card
---@return boolean
function Card.IsOnField(c) end

-- ●bool Card.IsLocation(Card c, int location)  
-- 检查c当前位置是否是location  
-- 注：当怪兽召唤，反转召唤，特殊召唤时召唤成功之前，  
-- 并且location=LOCATION_MZONE时，此函数返回false  
---@param c Card
---@param location integer
---@return boolean
function Card.IsLocation(c, location) end

-- ●bool Card.IsPreviousLocation(Card c, int location)  
-- 检查c之前的位置是否是location  
---@param c Card
---@param location integer
---@return boolean
function Card.IsPreviousLocation(c, location) end

-- ●bool Card.IsLevelBelow(Card c, int level)  
-- 检查c是否是等级level以下（至少为1）  
---@param c Card
---@param level integer
---@return boolean
function Card.IsLevelBelow(c, level) end

-- ●bool Card.IsLevelAbove(Card c, int level)  
-- 检查c是否是等级level以上  
---@param c Card
---@param level integer
---@return boolean
function Card.IsLevelAbove(c, level) end

-- ●bool Card.IsRankBelow(Card c, int rank)  
-- 检查c是否是阶级rank以下（至少为1）  
---@param c Card
---@param rank integer
---@return boolean
function Card.IsRankBelow(c, rank) end

-- ●bool Card.IsRankAbove(Card c, int rank)  
-- 检查c是否是阶级rank以上  
---@param c Card
---@param rank integer
---@return boolean
function Card.IsRankAbove(c, rank) end

-- ●bool Card.IsLinkBelow(Card c, int link)  
-- 检查c是否连接标记数量是link以下（至少为1）  
---@param c Card
---@param link integer
---@return boolean
function Card.IsLinkBelow(c, link) end

-- ●bool Card.IsLinkAbove(Card c, int link)  
-- 检查c是否连接标记数量是link以上  
---@param c Card
---@param link integer
---@return boolean
function Card.IsLinkAbove(c, link) end

-- ●bool Card.IsAttackBelow(Card c, int atk)  
-- 检查c是否是攻击力atk以下（至少为0）  
---@param c Card
---@param atk integer
---@return boolean
function Card.IsAttackBelow(c, atk) end

-- ●bool Card.IsAttackAbove(Card c, int atk)  
-- 检查c是否是攻击力atk以上  
---@param c Card
---@param atk integer
---@return boolean
function Card.IsAttackAbove(c, atk) end

-- ●bool Card.IsDefenseBelow(Card c, int def)  
-- 检查c是否是守备力def以下（至少为0）  
---@param c Card
---@param def integer
---@return boolean
function Card.IsDefenseBelow(c, def) end

-- ●bool Card.IsDefenseAbove(Card c, int def)  
-- 检查c是否是守备力def以上  
---@param c Card
---@param def integer
---@return boolean
function Card.IsDefenseAbove(c, def) end

-- ●bool Card.IsPublic(Card c)  
-- 检查c是否处于公开状态  
---@param c Card
---@return boolean
function Card.IsPublic(c) end

-- ●bool Card.IsForbidden(Card c)  
-- 检查c是否处于被宣言禁止状态  
---@param c Card
---@return boolean
function Card.IsForbidden(c) end

-- ●bool Card.IsAbleToChangeControler(Card c)  
-- 检查c是否可以改变控制权  
-- 注：仅当卡收到了“不能改变控制权”的效果的影响时，此函数返回false  
---@param c Card
---@return boolean
function Card.IsAbleToChangeControler(c) end

-- ●bool Card.IsControlerCanBeChanged(Card c[, bool ignore_mzone=false, int zone=0xff])  
-- 检查c的控制权是否可以改变。 ignore_mzone=true 会忽视转移控制权后的玩家场上是否有空格位， zone 表示必须要使用的位置  
---@param c Card
---@param ignore_mzone? boolean false
---@param zone? integer 0xff
---@return boolean
function Card.IsControlerCanBeChanged(c, ignore_mzone, zone) end

-- ●bool Card.IsCanHaveCounter(Card c,int countertype)  
-- 检查c上是否可以放置countertype类型的指示物  
---@param c Card
---@param countertype integer
---@return boolean
function Card.IsCanHaveCounter(c, countertype) end

-- ●bool Card.AddCounter(Card c, int countertype, int count[, int singly=false])  
-- 为c放置count个countertype类型的指示物，singly为true表示逐个添加至上限为止  
---@param c Card
---@param countertype integer
---@param count integer
---@param singly? integer false
---@return boolean
function Card.AddCounter(c, countertype, count, singly) end

-- ●void Card.RemoveCounter(Card c, int player, int countertype, int count, int reason)  
-- 让玩家player以原因reason移除c上的count个countertype类型的指示物， countertype=0 则清除c的所有指示物  
---@param c Card
---@param player integer
---@param countertype integer
---@param count integer
---@param reason integer
function Card.RemoveCounter(c, player, countertype, count, reason) end

-- ●int Card.GetCounter(Card c, int countertype)  
-- 返回c上的countertype类型的指示物的数量， countertype=0 则返回c上所有类型的指示物数量之和  
---@param c Card
---@param countertype integer
---@return integer
function Card.GetCounter(c, countertype) end

-- ●void Card.EnableCounterPermit(Card c, int countertype[, int location])  
-- 允许c[在位置location]放置那个需要“可以放置”才能放置的指示物countertype  
-- location的默认值与c的种类有关，灵摆怪兽需要指定能否在怪兽区域或灵摆区域放置指示物  
---@param c Card
---@param countertype integer
---@param location? integer
function Card.EnableCounterPermit(c, countertype, location) end

-- ●void Card.SetCounterLimit(Card c, int countertype, int count)  
-- 设定c放置countertype类型指示物的上限  
---@param c Card
---@param countertype integer
---@param count integer
function Card.SetCounterLimit(c, countertype, count) end

-- ●bool Card.IsCanChangePosition(Card c)  
-- 检查c是否可以用效果改变表示形式  
---@param c Card
---@return boolean
function Card.IsCanChangePosition(c) end

-- ●bool Card.IsCanTurnSet(Card c)  
-- 检查c是否可以转成里侧表示  
---@param c Card
---@return boolean
function Card.IsCanTurnSet(c) end

-- ●bool Card.IsCanAddCounter(Card c, int countertype, int count[, int singly=false, int location])  
-- 检查c是否可以[逐个(singly=true)在 location 区域]放置count个countertype类型的指示物  
---@param c Card
---@param countertype integer
---@param count integer
---@param singly? integer false
---@param location? integer
---@return boolean
function Card.IsCanAddCounter(c, countertype, count, singly, location) end

-- ●bool Card.IsCanRemoveCounter(Card c, int player, int countertype, int count, int reason)  
-- 检查玩家player是否可以以原因reason移除c上的count个countertype类型的指示物  
---@param c Card
---@param player integer
---@param countertype integer
---@param count integer
---@param reason integer
---@return boolean
function Card.IsCanRemoveCounter(c, player, countertype, count, reason) end

-- ●bool Card.IsCanBeFusionMaterial(Card c[, Card fc])  
-- 检查c是否可以成为[融合怪兽fc的]融合素材  
---@param c Card
---@param fc? Card
---@return boolean
function Card.IsCanBeFusionMaterial(c, fc) end

-- ●bool Card.IsCanBeSynchroMaterial(Card c[, Card sc, Card tuner])  
-- 检查c是否可以成为[以 tuner 为调整的同调怪兽sc的]同调素材  
---@param c Card
---@param sc? Card
---@param tuner? Card
---@return boolean
function Card.IsCanBeSynchroMaterial(c, sc, tuner) end

-- ●bool Card.IsCanBeRitualMaterial(Card c, Card sc|nil)  
-- 检查c是否可以作为[仪式怪兽sc的]仪式素材,没有指定sc的场合，必须填nil  
---@param c Card
---@param sc? Card
---@return boolean
function Card.IsCanBeRitualMaterial(c, sc) end

-- ●bool Card.IsCanBeXyzMaterial(Card c, Card sc|nil)  
-- 检查c是否可以成为[XYZ怪兽sc的]XYZ素材,没有指定sc的场合，必须填nil  
---@param c Card
---@param sc? Card
---@return boolean
function Card.IsCanBeXyzMaterial(c, sc) end

-- ●bool Card.IsCanBeLinkMaterial(Card c, Card sc|nil)  
-- 检查c是否可以成为[连接怪兽sc的]连接素材,没有指定sc的场合，必须填nil  
---@param c Card
---@param sc? Card
---@return boolean
function Card.IsCanBeLinkMaterial(c, sc) end

-- ●bool Card.CheckFusionMaterial(Card c[, Group g|nil, Card gc|nil, int chkf=PLAYER_NONE])  
-- 检查场上[或g]是否包含了c需要[必须包含gc在内]的一组融合素材  
---@param c Card
---@param g? Group
---@param gc? Card
---@param chkf? integer PLAYER_NONE
---@return boolean
function Card.CheckFusionMaterial(c, g, gc, chkf) end

-- ●bool Card.CheckFusionSubstitute(Card c, Card fc)  
-- 检查c能否代替融合怪兽fc的记述卡名的素材  
---@param c Card
---@param fc Card
---@return boolean
function Card.CheckFusionSubstitute(c, fc) end

-- ●bool Card.IsImmuneToEffect(Card c, Effect e)  
-- 检查c是否免疫效果e（即不受效果e的影响）  
---@param c Card
---@param e Effect
---@return boolean
function Card.IsImmuneToEffect(c, e) end

-- ●bool Card.IsCanBeEffectTarget(Card c[, Effect e])  
-- 检查c是否可以成为效果[e的]对象  
---@param c Card
---@param e? Effect
---@return boolean
function Card.IsCanBeEffectTarget(c, e) end

-- ●bool Card.IsCanBeBattleTarget(Card c1, Card c2)  
-- 检查c1是否可以成为c2的攻击目标  
---@param c1 Card
---@param c2 Card
---@return boolean
function Card.IsCanBeBattleTarget(c1, c2) end

-- ●void Card.AddMonsterAttribute(Card c, int type[, int attribute, int race, int level, int atk, int def])  
-- 为魔陷卡c添加怪兽数值,type 为怪兽类型，不能是没有等级的怪兽  
-- 注：在数据库中有记录的数值视为原本数值  
---@param c Card
---@param type integer
---@param attribute? integer
---@param race? integer
---@param level? integer
---@param atk? integer
---@param def? integer
function Card.AddMonsterAttribute(c, type, attribute, race, level, atk, def) end

-- ●void Card.CancelToGrave(Card c[, bool cancel=true])  
-- 取消送墓确定状态，cancel=false则重新设置送墓确定状态  
-- 注：送墓确定状态指的是在场上发动的不留场的魔法和陷阱后，这些卡片的状态  
-- 送墓确定状态中的卡无法返回手卡和卡组，并且连锁结束时送去墓地  
-- 此函数的作用是取消此状态使其留场，用于光之护封剑和废铁稻草人等卡  
---@param c Card
---@param cancel? boolean true
function Card.CancelToGrave(c, cancel) end

-- ●int,int Card.GetTributeRequirement(Card c)  
-- 返回通常召唤c所需要的祭品的最小和最大数量  
---@param c Card
---@return integer
---@return integer
function Card.GetTributeRequirement(c) end

-- ●Card Card.GetBattleTarget(Card c)  
-- 返回与c进行战斗的卡，没有则返回nil  
---@param c Card
---@return Card
function Card.GetBattleTarget(c) end

-- ●Group,bool Card.GetAttackableTarget(Card c)  
-- 返回c可攻击的卡片组以及能否直接攻击  
---@param c Card
---@return Group
---@return boolean
function Card.GetAttackableTarget(c) end

-- ●void Card.SetHint(Card c, int type, int value)  
-- 为c设置类型为type的卡片提示信息  
-- type只能为以下值，对应的value类型为  
-- CHINT_TURN              回合数  
-- CHINT_CARD              卡片id  
-- CHINT_RACE              种族  
-- CHINT_ATTRIBUTE         属性  
-- CHINT_NUMBER            数字  
-- CHINT_DESC              描述  
---@param c Card
---@param type integer
---@param value integer
function Card.SetHint(c, type, value) end

-- ●void Card.ReverseInDeck(Card c)  
-- 设置c在卡组中正面表示（POS_FACEUP_DEFENSE）  
---@param c Card
function Card.ReverseInDeck(c) end

-- ●void Card.SetUniqueOnField(Card c, int s, int o, function|int unique_code[, int unique_location=LOCATIOIN_ONFIELD])  
-- 设置c以unique_code只能在场上[或怪兽区域或魔陷区域，由unique_location决定]只能存在1张,function 的返回值类型必须是int  
-- s不为0会检查自己场上的唯一性，o不为0则检查对方场上的唯一性  
---@param c Card
---@param s integer
---@param o integer
---@param unique_code function | integer
---@param unique_location? integer LOCATIOIN_ONFIELD
function Card.SetUniqueOnField(c, s, o, unique_code, unique_location) end

-- ●bool Card.CheckUniqueOnField(Card c,int check_player[, int check_location=LOCATION_ONFIELD, Card icard|nil])  
-- 检查c在check_player场上的唯一性  
---@param c Card
---@param check_player integer
---@param check_location? integer LOCATION_ONFIELD
---@param icard? Card
---@return boolean
function Card.CheckUniqueOnField(c, check_player, check_location, icard) end

-- ●void Card.ResetNegateEffect(Card c[, int code1,...])  
-- 重置c受到的卡号为code1[, code2...]的卡片的效果的影响  
---@param c Card
---@param code1? integer
---@param ...? any
function Card.ResetNegateEffect(c, code1, ...) end

-- ●void Card.AssumeProperty(Card c,int assume_type, int assume_value)  
-- 把c的assume_type的数值当作assume_value使用（基因组斗士）  
-- assume_type为以下类型  
-- ASSUME_CODE         卡号  
-- ASSUME_TYPE         类型  
-- ASSUME_LEVEL        等级  
-- ASSUME_RANK         阶级  
-- ASSUME_ATTRIBUTE    属性  
-- ASSUME_RACE         种族  
-- ASSUME_ATTACK       攻击力  
-- ASSUME_DEFENSE      守备力  
---@param c Card
---@param assume_type integer
---@param assume_value integer
function Card.AssumeProperty(c, assume_type, assume_value) end

-- ●void Card.SetSPSummonOnce(Card c, int spsummon_code)  
-- 设置c一回合只能进行1次特殊召唤（灵兽，波动龙）  
-- 相同的spsummon_code共用1个次数  
---@param c Card
---@param spsummon_code integer
function Card.SetSPSummonOnce(c, spsummon_code) end

-- ●bool Card.IsRitualType(Card c)  
-- 返回c的仪式召唤的种类。  
---@param c Card
---@return boolean
function Card.IsRitualType(c) end

-- ●bool Card.SetEntityCode(Card c, int code[, bool no_alias=false])  
-- 把c的卡图，卡名，信息全部改成卡号为code的卡的信息，但是不改变效果。常用于卡片变身类效果。返回是否成功。  
-- no_alias=true会把变身后c的同名卡信息去除。用于双面卡的处理。  
---@param c Card
---@param code integer
---@param no_alias? boolean false
---@return boolean
function Card.SetEntityCode(c, code, no_alias) end

-- ●void Card.SetCardData(Card c, int type, int value)  
-- 把c的type的信息在本次决斗中永久性更改为value，如同更改卡片数据库一般。  
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
---@param c Card
---@param type integer
---@param value integer
function Card.SetCardData(c, type, value) end

-- ●int Card.GetLinkMarker(Card c)  
-- 返回c的连接标记。  
---@param c Card
---@return integer
function Card.GetLinkMarker(c) end

-- ●int Card.GetOriginalLinkMarker(Card c)  
-- 返回c的原本连接标记。  
---@param c Card
---@return integer
function Card.GetOriginalLinkMarker(c) end

-- ●bool Card.IsXyzSummonableByRose(Card c, Card c1, Card c2)  
-- 返回c是否可以用c1和c2这2张卡为素材XYZ召唤。XYZ召唤时，c1的等级当作和c2相同。  
---@param c Card
---@param c1 Card
---@param c2 Card
---@return boolean
function Card.IsXyzSummonableByRose(c, c1, c2) end

-- ●int Card.GetRemovedOverlayCount(Card c)  
-- 返回c本回合被取除的XYZ素材数量。  
---@param c Card
---@return integer
function Card.GetRemovedOverlayCount(c) end

-- ●bool Card.IsOriginalCodeRule(Card c, int code)  
-- 检查c是否在规则上当做code使用  
---@param c Card
---@param code integer
---@return boolean
function Card.IsOriginalCodeRule(c, code) end

-- ●bool Card.IsLinkSummonable(Card c, Group mg|nil[, int min=0, int max=0])  
-- 检查是否可以在场上的卡[或mg][中选出 min-max 个连接素材]对c进行连接召唤手续  
-- 如果mg为nil，此函数与 c:IsSpecialSummonable(SUMMON_TYPE_LINK)作用相同  
---@param c Card
---@param mg? Group
---@param min? integer 0
---@param max? integer 0
---@return boolean
function Card.IsLinkSummonable(c, mg, min, max) end

-- ●bool Card.IsCanOverlay(Card c)  
-- 检查c是否可以作为XYZ素材  
---@param c Card
---@return boolean
function Card.IsCanOverlay(c) end

-- ●bool Card.IsTuner(Card c)  
-- 检查c是否是调整怪兽。  
-- 除了检查TYPE_TUNER以外，还会检查其身上所有能让其变为调整怪兽的效果。  
---@param c Card
---@return boolean
function Card.IsTuner(c) end

-- ●bool Card.IsSpecialSummonableCard(Card c)  
-- 检查c是否能以正规方法特殊召唤。  
-- c必须有可特殊召唤的方式。  
---@param c Card
---@return boolean
function Card.IsSpecialSummonableCard(c) end

-- ●bool Card.IsCanBeDisabledByEffect(Card c, Effect e[, bool isMonsterEffect])  
-- 检查c的效果是否能被e无效。  
-- 已经被无效的卡，或原本就没有效果的卡，或不受e影响的卡不能被无效。  
-- 第三个参数可选，指示其是否为怪兽效果。  
---@param c Card
---@param e Effect
---@param isMonsterEffect? boolean
---@return boolean
function Card.IsCanBeDisabledByEffect(c, e, isMonsterEffect) end

-- ●bool Card.IsCanBeDisabledByEffect(Card c, Effect e[, bool isMonsterEffect])  
-- 检查c的效果是否能被e无效。  
-- 已经被无效的卡，或原本就没有效果的卡，或不受e影响的卡不能被无效。  
-- 第三个参数可选，指示其是否为怪兽效果。  
---@param c Card
---@param e Effect
---@param isMonsterEffect? boolean
---@return boolean
function Card.IsCanBeDisabledByEffect(c, e, isMonsterEffect) end

-- ●int Card.GetAttributeInGrave(Card c[, int reasonPlayer])  
-- 检查c在墓地中会变成什么属性。  
-- 第二个参数可选，指示假设送去墓地是由于哪个玩家。  
---@param c Card
---@param reasonPlayer? integer
---@return integer
function Card.GetAttributeInGrave(c, reasonPlayer) end

-- ●int Card.GetRaceInGrave(Card c[, int reasonPlayer])  
-- 检查c在墓地中会变成什么种族。  
-- 第二个参数可选，指示假设送去墓地是由于哪个玩家。  
---@param c Card
---@param reasonPlayer? integer
---@return integer
function Card.GetRaceInGrave(c, reasonPlayer) end

return Card
