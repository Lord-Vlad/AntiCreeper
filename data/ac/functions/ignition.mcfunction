execute at @a if entity @e[type=minecraft:creeper,distance=..3] run execute as @e[type=minecraft:creeper,distance=..3] run tag @s add acIgnited

execute as @e[tag=acIgnited] run data modify entity @s ignited set value 1b

execute if entity @e[tag=acIgnited] run gamerule mobGriefing false
execute unless entity @e[tag=acIgnited] run gamerule mobGriefing true
