execute as @e[type=minecraft:creeper,tag=!acDone] at @s run data modify entity @s ExplosionRadius set value 0b
execute as @e[type=minecraft:creeper,tag=!acDone] at @s run tag @s add acDone
