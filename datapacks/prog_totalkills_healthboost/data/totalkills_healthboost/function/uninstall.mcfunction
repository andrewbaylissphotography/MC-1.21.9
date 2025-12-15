# === Cleanup for CoreBound:Health+ ===

# Remove storage keys

# Remove scoreboards created by CoreBound:Health+
scoreboard objectives remove hostilekills
scoreboard objectives remove absorpCycle
scoreboard objectives remove EffectReapply

# Cancel any scheduled CoreBound:Health+ functions
schedule clear totalkills_healthboost:tick

# Remove custon recipes


tellraw @a [{"text":"[CoreBound: Health+] Uninstalled cleanly.","color":"yellow"}]
