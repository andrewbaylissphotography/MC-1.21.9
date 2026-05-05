# Sell 1 emerald for 10 coins
clear @s minecraft:emerald 1
scoreboard players add @s coin 10

tellraw @s [
  {"text":"Sold 1 Emerald for ","color":"green"},
  {"text":"10","color":"gold"},
  {"text":" coins","color":"green"}
]
