#check until there is a block with a cushion on
execute if score #range takeacushion.var matches ..0 run return fail

scoreboard players remove #range takeacushion.var 1
execute as @e[type=cushion,tag=!takeacushion.inactive,tag=!takeacushion.checked,distance=..1,limit=1] run return run function takeacushion:cushion/enable

execute positioned ^ ^ ^1 run function takeacushion:cushion/check