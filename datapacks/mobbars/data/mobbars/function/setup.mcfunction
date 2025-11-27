# Create scoreboard for mob health
scoreboard objectives add mobHealth dummy

# Initial tagging of mobs
function mobbars:mobwhitelist

schedule function mobbars:update 1t