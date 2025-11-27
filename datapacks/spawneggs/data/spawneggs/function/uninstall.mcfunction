# === Cleanup for CoreBound: Spawn Eggs ===

# Remove storage keys

# Remove scoreboards created by CoreBound: Spawn Eggs
scoreboard objectives remove rand
scoreboard objectives remove zombieKills
scoreboard objectives remove skeletonKills
scoreboard objectives remove spiderKills
scoreboard objectives remove caveSpiderKills
scoreboard objectives remove silverfishKills
scoreboard objectives remove blazeKills
scoreboard objectives remove magmaCubeKills

# Cancel any scheduled CoreBound: Spawn Eggs functions
schedule clear function spawneggs:tick 1t

tellraw @a [{"text":"[CoreBound: Spawn Eggs] Uninstalled cleanly.","color":"yellow"}]
