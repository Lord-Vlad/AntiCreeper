
execute as @e[type=creeper] at @s unless entity @s[nbt={ExplosionRadius:-3b}] run data modify entity @s ExplosionRadius set value -3b

execute if score System acToggle matches 1 as @e[type=creeper] at @s if entity @p[distance=..3] run summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,LifeTime:1,CustomName:"{\"text\":\"Creeper\"}",FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;1292800]}]}}}}

#schedule function ac:defuse 1s
