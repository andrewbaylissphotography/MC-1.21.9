# mark player as initialized
#tag @s add corebound.init
tag @s add corebound.init

tellraw @s [{"text":" [CoreBound] New Player Detected, Setting flags","color":"yellow"}]

# run full system bootstrap
function corebound:load_new