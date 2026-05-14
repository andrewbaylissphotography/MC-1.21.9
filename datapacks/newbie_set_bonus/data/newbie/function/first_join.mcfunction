# uncomment for verbose
 tellraw @a {"text":"newbie_set_bonus - first_join.mcfunction","color":"yellow"}

function newbie:first_join_set

tag @s add newbie_init

tellraw @s [{"atlas":"minecraft:items","sprite":"item/leather_chestplate"},{"text":" You received the Newbie Set!","color":"gold"}]