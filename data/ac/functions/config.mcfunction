##########
# CONFIG #
##########

# 1: Traditional; sets explosion radius to 0.
# 2: Experimental; uses mobGriefing gamerule to ensure creepers still do damage to entities but isn't reliable.
# 3: Ignition; ignites every creeper in range (3 blocks) but creepers are forced to explode this way. Works flawless.
scoreboard players set $acMode acToggle 2
