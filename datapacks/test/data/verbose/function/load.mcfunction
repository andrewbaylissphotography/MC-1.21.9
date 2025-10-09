#verbose:load
tellraw @a {"text":"[Verbose] Reload complete!","color":"green"}
title @a actionbar [{"text":"Check out the items in the","color":"gray"}," ",{"text":"SHOP🪓","color":"green"}]

recipe take @a *
recipe give @a *
tellraw @a {"text":"[NEW RECIPE - Copper Shears]","color":"green"}
tellraw @a {"text":"[NEW RECIPE - Compressed Cobblestone]","color":"green"}
tellraw @a {"text":"[NEW RECIPE - Copper Block from Raw Copper Block]","color":"green"}
tellraw @a {"text":"[NEW RECIPE - Iron Block from Raw Iron Block]","color":"green"}
tellraw @a {"text":"[NEW RECIPE - Gold Block from Raw Gold Block]","color":"green"}
tellraw @a {"text":"[Spectator Night Vision]","color":"green"}

schedule function verbose:tick 1t