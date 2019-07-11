#execute as @e[type=creeper,nbt={ignited:1b}] at @s run kill @s
execute as @e[type=creeper] at @s unless entity @s[nbt={ExplosionRadius:0b}] run data modify entity @s ExplosionRadius set value 0b

#execute as @e[type=creeper] at @s if entity @p[distance=..3] run summon minecraft:potion ~ ~0.01 ~ {CustomNameVisible:0b,CustomName:"{\"text\":\"Creeper\"}",Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:1548546,CustomPotionEffects:[{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}]}}}
execute as @e[type=creeper] at @s if entity @p[distance=..3] run summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,LifeTime:1,CustomName:"{\"text\":\"Creeper\"}",FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;1292800]}]}}}}

schedule function ac:defuse 1s
