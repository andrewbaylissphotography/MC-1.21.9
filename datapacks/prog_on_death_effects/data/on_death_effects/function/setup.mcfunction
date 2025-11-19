scoreboard objectives add deaths deathCount
scoreboard objectives add lastDeath dummy
scoreboard objectives add justDied dummy
#say [on_death_effects] Setup complete!

# run statprogression
#schedule function on_death_effects:tick 1t