---@meta

Card = require("card")
Effect = require("effect")
Group = require("group")
Duel = require("duel")
Debug = require("library.debug")
Auxiliary = require("auxiliary")
aux = Auxiliary

---@alias TargetFun fun(e,tp,eg,ep,ev,re,r,rp,chk)

---@alias OperationFun fun(e,tp,eg,ep,ev,re,r,rp)

---@alias FilterFun fun(c:Card, ...)
