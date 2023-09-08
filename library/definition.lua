---@meta

Card = require("card")
Effect = require("effect")
Group = require("group")
Duel = require("duel")
Debug = require("library.debug")
Auxiliary = require("aux_")
aux = Auxiliary

---@alias TargetFun fun(e,tp,eg,ep,ev,re,r,rp,chk)

---@alias OperationFun fun(e,tp,eg,ep,ev,re,r,rp)

---@alias FilterFun fun(c:Card, ...)


POS_FACEUP_DEFENCE = POS_FACEUP_DEFENSE
POS_FACEDOWN_DEFENCE = POS_FACEDOWN_DEFENSE
RACE_CYBERS = RACE_CYBERSE


---@class CardTable : Card

---获取 self_table, self_code, offset
---@return CardTable self_table
---@return integer self_code
---@return integer offset  1 or 100
function GetID() end
