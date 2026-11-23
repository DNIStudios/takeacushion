scoreboard players add #cushions takeacushion.var 1
tag @s remove takeacushion.tick

execute if score @s takeacushion.var matches 1.. run function takeacushion:cushion/remove_glow

#ride nearby
execute if predicate takeacushion:has_passenger run return fail
ride @n[distance=..0.85,type=!#takeacushion:other,predicate=takeacushion:not_sitting] mount @s