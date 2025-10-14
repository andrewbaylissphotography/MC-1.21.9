#altar:setup
# Create the scoreboard objective
scoreboard objectives add Contribution dummy

# Create the altar progress scoreboard player
scoreboard players set AltarTotal Contribution 0

# Create the bossbar
bossbar remove altar:contribution
bossbar add altar:contribution "Altar Contribution: Diamond x1000"
bossbar set altar:contribution max 1000
bossbar set altar:contribution players @a
bossbar set altar:contribution value 0
bossbar set altar:contribution style notched_10
bossbar set altar:contribution color blue