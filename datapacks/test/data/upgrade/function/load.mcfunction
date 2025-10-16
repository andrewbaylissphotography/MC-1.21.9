# upgrade:load.mcfunction
scoreboard objectives add upgrade trigger QualityUpgrade

scoreboard players enable @a[scores={upgrade=0}] upgrade

schedule function upgrade:tick 1t

tellraw @a {"text":"[Upgrade]","color":"green"}