---@meta

---@class Group
local Group = {}

-- ●Group Group.CreateGroup()  
-- 新建一个空的卡片组  
---@return Group
function Group.CreateGroup() end

-- ●void Group.KeepAlive(Group g)  
-- 让卡片组持续，把卡片组设置为效果的LabelObject需要设置  
---@param g Group
function Group.KeepAlive(g) end

-- ●void Group.DeleteGroup(Group g)  
-- 删除卡片组g  
---@param g Group
function Group.DeleteGroup(g) end

-- ●Group Group.Clone(Group g)  
-- 新建卡片组g的副本  
---@param g Group
---@return Group
function Group.Clone(g) end

-- ●Group Group.FromCards(...)  
-- 不定参数，把传入的所有卡组合成一个卡片组并返回，所有参数只能是 Card 类型。没有参数时，相当于Group.CreateGroup()  
---@param ... any
---@return Group
function Group.FromCards(...) end

-- ●void Group.Clear(Group g)  
-- 清空卡片组  
---@param g Group
function Group.Clear(g) end

-- ●void Group.AddCard(Group g, Card c)  
-- 往g中增加c  
---@param g Group
---@param c Card
function Group.AddCard(g, c) end

-- ●void Group.RemoveCard(Group g, Card c)  
-- 把c从g中移除  
---@param g Group
---@param c Card
function Group.RemoveCard(g, c) end

-- ●Card Group.GetFirst(Group g)  
-- 返回g中第一张卡，并重置当前指针到g中第一张卡  
-- 如果g中不存在卡则返回nil  
---@param g Group
---@return Card
function Group.GetFirst(g) end

-- ●Card Group.GetNext(Group g)  
-- 使指针指向下一张卡并返回这张卡，如果不存在则返回nil  
---@param g Group
---@return Card
function Group.GetNext(g) end

-- ●int Group.__len(Group g)  
-- 和 Group.GetCount 一样  
---@param g Group
---@return integer
function Group.__len(g) end

-- ●void Group.ForEach(Group g, function f,...)  
-- 以g中的每一张卡作为参数调用一次f ,第三个参数开始为额外参数  
---@param g Group
---@param f function
---@param ... any
function Group.ForEach(g, f, ...) end

-- ●Group Group.Filter(Group g, function f, Card|Group ex|nil, ...)  
-- 过滤函数，从g中筛选满足筛选条件f并且不等于ex的卡  
-- 从第4个参数开始为额外参数  
---@param g Group
---@param f function
---@param ex? Card | Group
---@param ... any
---@return Group
function Group.Filter(g, f, ex, ...) end

-- ●int Group.FilterCount(Group g, function f, Card|Group ex|nil, ...)  
-- 过滤函数，和Group.Filter基本相同，不同之处在于此函数只返回满足条件的卡的数量  
---@param g Group
---@param f function
---@param ex? Card | Group
---@param ... any
---@return integer
function Group.FilterCount(g, f, ex, ...) end

-- ●Group Group.FilterSelect(Group g, int player, function f, int min, int max, Card|Group ex|nil, ...)  
-- 过滤函数，让玩家player从g中选择 min-max 张满足筛选条件f并且不等于ex的卡  
-- 从第7个参数开始为额外参数  
---@param g Group
---@param player integer
---@param f function
---@param min integer
---@param max integer
---@param ex? Card | Group
---@param ... any
---@return Group
function Group.FilterSelect(g, player, f, min, max, ex, ...) end

-- ●Group Group.Select(Group g, int player, int min, int max, Card|Group ex|nil)  
-- 让玩家player从g中选择min-max张不等于ex的卡  
---@param g Group
---@param player integer
---@param min integer
---@param max integer
---@param ex? Card | Group
---@return Group
function Group.Select(g, player, min, max, ex) end

-- ●Card Group.SelectUnselect(Group cg, Group sg, int player, bool btok=false, bool cancelable=false, int minc, int maxc)  
-- 让玩家 player 从 未选择的卡 cg 或 已选择的卡 sg 中选择 1 张卡，并返回选的卡。  
-- btok 表示是否可以点击完成选择的按钮， cancelable 表示是否可以取消(返回 nil)，  
-- minc 和 maxc 是客户端的文字缓冲提示，表示需要选择 minc-maxc 张卡，但是这个只是影响视觉效果，并不代表必须要选择那个数量  
---@param cg Group
---@param sg Group
---@param player integer
---@param btok boolean false
---@param cancelable boolean false
---@param minc integer
---@param maxc integer
---@return Card
function Group.SelectUnselect(cg, sg, player, btok, cancelable, minc, maxc) end

-- ●Group Group.RandomSelect(Group g, int player, int count)  
-- 让玩家player从g中随机选择count张卡  
-- 因为是随机选择，所以参数player基本无用，由系统随机选取  
---@param g Group
---@param player integer
---@param count integer
---@return Group
function Group.RandomSelect(g, player, count) end

-- ●bool Group.IsExists(Group g, function f, int count, Card|Group ex|nil, ...)  
-- 过滤函数，检查g中是否存在至少count张满足筛选条件f并且不等于ex的卡  
-- 从第5个参数开始为额外参数  
---@param g Group
---@param f function
---@param count integer
---@param ex? Card | Group
---@param ... any
---@return boolean
function Group.IsExists(g, f, count, ex, ...) end

-- ●bool Group.CheckWithSumEqual(Group g, function f, int sum, int min=0, int max, ...)  
-- 子集求和判定函数，f为返回一个interger值的函数  
-- 检查g中是否存在一个数量为min-max的子集满足以f对子集的每一个元素求值的和等于sum，从第6个参数开始为额外参数  
-- 	比如：g:CheckWithSumEqual(Card.GetSynchroLevel,7,2,99)  
-- 	检查g中是否存在一个子集满足子集的同调用等级之和等于7  
---@param g Group
---@param f function
---@param sum integer
---@param min integer 0
---@param max integer
---@param ... any
---@return boolean
function Group.CheckWithSumEqual(g, f, sum, min, max, ...) end

-- ●Group Group.SelectWithSumEqual(Group g, int player, function f, int sum, int min, int max, ...)  
-- 让玩家player从g中选取一个数量为min-max的子集使子集的特定函数的和等于sum，从第7个参数开始为额外参数  
---@param g Group
---@param player integer
---@param f function
---@param sum integer
---@param min integer
---@param max integer
---@param ... any
---@return Group
function Group.SelectWithSumEqual(g, player, f, sum, min, max, ...) end

-- ●bool Group.CheckWithSumGreater(Group g, function f, int sum, ...)  
-- 子集求和判定函数之二，f为返回一个interger值的函数  
-- 检查g中是否存在一个子集满足以f对子集的每一个元素求值的和刚好大于或者等于sum，从第4个参数开始为额外参数  
-- 比如：g:CheckWithSumGreater(Card.GetRitualLevel,8)  
-- 	检查g中是否存在一个子集满足子集的仪式用等级之和大于等于8  
-- 	注：判定必须是“刚好”大于或者等于  
-- 	以等级为例，要使等级合计大于等于8，可以选择LV1+LV7而不可以选择LV1+LV4+LV4  
---@param g Group
---@param f function
---@param sum integer
---@param ... any
---@return boolean
function Group.CheckWithSumGreater(g, f, sum, ...) end

-- ●Group Group.SelectWithSumGreater(Group g, int player, function f, int sum, ...)  
-- 让玩家player从g中选取一个子集使子集的特定函数f的和大于等于sum，从第5个参数开始为额外参数  
---@param g Group
---@param player integer
---@param f function
---@param sum integer
---@param ... any
---@return Group
function Group.SelectWithSumGreater(g, player, f, sum, ...) end

-- ●Group,int Group.GetMinGroup(Group g, function f, ...)  
-- f为返回一个interger值的函数，从g中筛选出具有最小的f的值的卡  
-- 第2个返回值为这个最小值，从第3个参数开始为额外参数  
-- 要使用第2个返回值注意检查g非空  
---@param g Group
---@param f function
---@param ... any
---@return Group
---@return integer
function Group.GetMinGroup(g, f, ...) end

-- ●Group,int Group.GetMaxGroup(Group g, function f, ...)  
-- f为返回一个interger值的函数，从g中筛选出具有最大的f的值的卡  
-- 第2个返回值为这个最大值，从第3个参数开始为额外参数  
-- 要使用第2个返回值注意检查g非空  
---@param g Group
---@param f function
---@param ... any
---@return Group
---@return integer
function Group.GetMaxGroup(g, f, ...) end

-- ●int Group.GetSum(Group g, function f, ...)  
-- 计算g中所有卡的取值的总和，f为为每张卡的取值函数，从第3个参数开始为额外参数  
-- 等价于：  
-- function GetSum(g,f,...)  
-- 	local ct=0  
-- 	local val={...}  
-- 	for tc in aux.Next(g)  
-- 		if f(tc,table.unpack(val)) then ct=ct+1 end  
-- 	end  
-- 	return ct  
-- end  
---@param g Group
---@param f function
---@param ... any
---@return integer
function Group.GetSum(g, f, ...) end

-- ●int Group.GetClassCount(Group g, function f, ...)  
-- 计算g中所有卡的种类数量，f为分类的依据，返回相同的值视为同一种类，从第3个参数开始为额外参数  
-- 比如 g:GetClassCount(Card.GetCode()) 就是计算g中卡名不同的卡的数量  
---@param g Group
---@param f function
---@param ... any
---@return integer
function Group.GetClassCount(g, f, ...) end

-- ●void Group.Remove(Group g, function f, Card ex|nil, ...)  
-- 从g中移除满足筛选条件f并且不等于ex的所有卡，第4个参数开始是额外参数  
---@param g Group
---@param f function
---@param ex? Card
---@param ... any
function Group.Remove(g, f, ex, ...) end

-- ●void Group.Merge(Group g1, Group g2)  
-- 把g2中的所有卡合并到g1，若g1中原本就有属于g2的卡，那些卡将不会重复  
-- 注：g2本身不会发生变化  
---@param g1 Group
---@param g2 Group
function Group.Merge(g1, g2) end

-- ●void Group.Sub(Group g1, Group g2)  
-- 从g1中移除属于g2中的卡  
-- 注：g2本身不会发生变化  
---@param g1 Group
---@param g2 Group
function Group.Sub(g1, g2) end

-- ●bool Group.Equal(Group g1, Group g2)  
-- 判断g1和g2是否相同  
---@param g1 Group
---@param g2 Group
---@return boolean
function Group.Equal(g1, g2) end

-- ●bool Group.IsContains(Group g, Card c)  
-- 检查g中是否存在卡片c  
---@param g Group
---@param c Card
---@return boolean
function Group.IsContains(g, c) end

-- ●Card Group.SearchCard(Group g, function f, ...)  
-- 过滤函数，返回g中满足筛选条件f的第一张卡，若没有则返回nil，从第3个参数开始为额外参数  
---@param g Group
---@param f function
---@param ... any
---@return Card
function Group.SearchCard(g, f, ...) end

-- ●int Group.GetBinClassCount(Group g, function f, ...)  
-- 和 Group.GetClassCount 类似，但是算法不同(使用位运算)  
---@param g Group
---@param f function
---@param ... any
---@return integer
function Group.GetBinClassCount(g, f, ...) end

-- ●Group Group.__add(Group|Card target1, Group|Card target2)  
-- 新建一个卡片组，将 targe1 和 target2 中的 全部卡添加到这个卡片组，并返回这个卡片组，若有相同的卡只会添加1次， targe1,target2 本身不会有任何变化  
---@param target1 Group | Card
---@param target2 Group | Card
---@return Group
function Group.__add(target1, target2) end

-- ●Group Group.__bor(Group|Card target1, Group|Card target2)  
-- 代码和 Group.__add 完全一样  
---@param target1 Group | Card
---@param target2 Group | Card
---@return Group
function Group.__bor(target1, target2) end

-- ●Group Group.__sub(Group|Card target1, Group|Card target2)  
-- 新建一个卡片组，将 targe1 中的 全部卡添加到这个卡片组，然后再从这个卡片组把 target2 的卡全部删除，最后返回这个卡片组，targe1,target2 本身不会有任何变化  
---@param target1 Group | Card
---@param target2 Group | Card
---@return Group
function Group.__sub(target1, target2) end

-- ●Group Group.__band(Group|Card target1, Group|Card target2)  
-- 新建一个卡片组，将 target1 和 target2 中相同的卡（就是那张卡同时存在于 target1 和 target2 ）全部添加到 这个卡片组里，最后返回这个卡片组，targe1,target2 本身不会有任何变化  
---@param target1 Group | Card
---@param target2 Group | Card
---@return Group
function Group.__band(target1, target2) end

-- ●Group Group.__bxor(Group|Card target1, Group|Card target2)  
-- 新建一个卡片组，将 target1 和 target2 中不同的卡（就是只存在于 target1 或者 target2 里的卡）全部添加到 这个卡片组里，最后返回这个卡片组，targe1,target2 本身不会有任何变化  
---@param target1 Group | Card
---@param target2 Group | Card
---@return Group
function Group.__bxor(target1, target2) end

-- ●Group Group.SelectSubGroup(Group g, int tp, function f, bool cancelable, int min, int max, ...)  
-- 让玩家从g里选择多张不同的卡，直到满足条件为止。  
-- 每次选卡，都会把已经选中的卡以f(sg,...)的形式传给f。  
-- 如果返回true，则表示选卡结束，此函数返回选好的Group。  
-- cancelable如果为true，则玩家可以中途放弃，停止选卡。此时此函数返回nil。  
---@param g Group
---@param tp integer
---@param f function
---@param cancelable boolean
---@param min integer
---@param max integer
---@param ... any
---@return Group
function Group.SelectSubGroup(g, tp, f, cancelable, min, max, ...) end

return Group
