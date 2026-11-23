advancement revoke @s only takeacushion:place_cushion

execute store result score #range takeacushion.var run attribute @s block_interaction_range get 1
execute if predicate takeacushion:is_sneaking anchored eyes positioned ^ ^ ^ run function takeacushion:cushion/check

execute as @e[type=cushion,tag=!takeacushion.checked,tag=!takeacushion.inactive,distance=..6] run function takeacushion:cushion/disable