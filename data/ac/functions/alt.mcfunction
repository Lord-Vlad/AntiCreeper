gamerule mobGriefing true
#execute as @a at @s if entity @e[type=minecraft:creeper,distance=..3] run gamerule mobGriefing false
execute at @a if entity @e[type=minecraft:creeper,distance=..3] unless score $ac acFuse matches 0.. run scoreboard players set $ac acFuse 1
#scoreboard players remove $ac acFuse 1
execute if score $ac acFuse matches 1 run gamerule mobGriefing false
#execute if score $ac acFuse matches ..0 run scoreboard players reset $ac acFuse
execute at @a unless entity @e[type=minecraft:creeper,distance=..3] run scoreboard players reset $ac acFuse

execute unless score $ac acFuse matches 1 run gamerule mobGriefing true
#schedule function ac:gamerule 5s append
