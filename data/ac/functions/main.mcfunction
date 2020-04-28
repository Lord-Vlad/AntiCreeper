execute as @a at @s if entity @e[type=creeper,distance=..3,sort=nearest] run tag @e[type=creeper,distance=..3,sort=nearest] add acInRange

execute as @e[type=creeper,tag=acInRange] at @s unless score @s acFuse matches 0.. run scoreboard players set @s acFuse 30

scoreboard players remove @e[tag=acInRange] acFuse 1

execute if score @e[tag=acInRange,scores={acFuse=0},limit=1] acFuse matches 0 run gamerule mobGriefing false
execute if score @e[tag=acInRange,scores={acFuse=0},limit=1] acFuse matches 0 unless entity @e[type=creeper,distance=1..7] run schedule function ac:gamerule 1s replace
execute if score @e[tag=acInRange,scores={acFuse=0},limit=1] acFuse matches 0 if entity @e[type=creeper,distance=1..7] run schedule function ac:gamerule 5s append

execute as @e[tag=acInRange] at @s unless entity @p[distance=..7] run scoreboard players reset @s acFuse
execute as @e[tag=acInRange] at @s unless entity @p[distance=..7] run tag @s remove acInRange
