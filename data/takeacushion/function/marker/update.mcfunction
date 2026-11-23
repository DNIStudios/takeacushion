scoreboard players set #cushions takeacushion.var 0

execute as @e[type=cushion,tag=takeacushion.tick,distance=..16,limit=16] at @s run function takeacushion:cushion/update
execute if score #cushions takeacushion.var matches 0 run function takeacushion:marker/reset
execute unless entity @a[distance=..10,limit=1] run return run kill @s