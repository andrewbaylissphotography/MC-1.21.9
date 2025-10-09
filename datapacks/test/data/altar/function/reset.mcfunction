# altar:reset
# Called when the altar reaches full contribution (1000 points)

# 1. Epic message to all players
title @a title {"text":"The Altar is Awakened!","color":"gold","bold":true}
title @a subtitle {"text":"Your offerings have been accepted.","color":"aqua"}

# 2. Global sound (at all players' locations)
playsound minecraft:entity.evoker.prepare_wololo ambient @a

# 3. Server-wide reward (TBD)
# -------------------------------
# This is where you could do something like:
# - Unlock a new bossbar
# - Start a new phase
# - Summon mobs
# - Open a portal
# - Advance global progression
# Example:
# function altar:global_unlock_stage2
# -------------------------------

# 4. Local (contributing player) rewards
# A. XP reward
experience add @a[distance=..12] 30 levels

# B. Temporary potion effect to all players
effect give @a minecraft:regeneration 10 1

# 5. Reset altar state
scoreboard players set AltarTotal Contribution 0
bossbar set altar:contribution value 0

# 6. Reset altar visuals (e.g., back to inactive)
fill -65 58 20 -66 58 21 minecraft:tinted_glass

# 7. Reset phase tracker (if used)
scoreboard players set AltarPhase dummy 0
