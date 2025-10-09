#altar:load
function altar:setup
tellraw @a {"text":"[Altar Contribution]","color":"green"}

schedule function altar:tick 1t
