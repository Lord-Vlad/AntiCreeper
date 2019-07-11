#execute as @e[type=creeper,nbt={ignited:1b}] at @s run kill @s
execute as @e[type=creeper] at @s unless entity @s[nbt={ExplosionRadius:0b}] run data modify entity @s ExplosionRadius set value 0b
schedule function ac:defuse 1s
