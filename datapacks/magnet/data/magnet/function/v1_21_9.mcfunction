#1.21.9
tellraw @a [{"sprite":"item/echo_shard"},{"text":" [CoreBound: Magnet]","color":"green"}]
recipe take @a magnet:v1_21_6/magnet
recipe give @a magnet:v1_21_9/magnet
schedule function magnet:tick 1t
