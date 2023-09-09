---@meta

Card = require("card")
Effect = require("effect")
Group = require("group")
Duel = require("duel")
Debug = require("library.debug")
Auxiliary = require("aux_")
aux = Auxiliary

require("utility")

---@alias Player
---| 0 # 玩家 0
---| 1 # 玩家 1

---@alias ConditionFun fun(e:Effect, tp:Player, eg:Group?, ep:Player, ev:integer, re:Effect?, r:integer, rp:Player) : boolean

---@alias CostFun fun(e:Effect, tp:Player, eg:Group?, ep:Player, ev:integer, re:Effect?, r:integer, rp:Player, chk: 0?) : boolean?

---@alias TargetFun fun(e:Effect, tp:Player, eg:Group?, ep:Player, ev:integer, re:Effect?, r:integer, rp:Player, chk: 0?, chkc:Card?) : boolean?

---@alias OperationFun fun(e:Effect, tp:Player, eg:Group?, ep:Player, ev:integer, re:Effect?, r:integer, rp:Player)

---@alias FilterFun fun(c:Card, ...) : boolean

