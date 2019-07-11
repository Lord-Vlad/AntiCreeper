#execute as @e[type=creeper] at @s if entity @p[distance=..3] run data modify entity @s ignited set value 1b

#execute as @e[type=creeper,nbt={ignited:1b}] at @s run schedule function ac:defuse 30t
