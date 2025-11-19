scoreboard objectives add hostilekills minecraft.custom:minecraft.mob_kills
scoreboard objectives add absorpCycle dummy
say [totalkills_healthboost] Setup complete!

# run statprogression
schedule function totalkills_healthboost:tick 1t