---@meta

Card = require("card")
Effect = require("effect")
Group = require("group")
Duel = require("duel")

---@alias TargetFun fun(e,tp,eg,ep,ev,re,r,rp,chk)

---@alias OperationFun fun(e,tp,eg,ep,ev,re,r,rp)

---@alias FilterFun fun(c:Card, ...)
