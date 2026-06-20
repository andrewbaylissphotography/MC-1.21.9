
# https://minecraft.wiki/w/Java_Edition_data_values/Protocol_and_data_versions

# corebound
#1.21.11 - 26.1.2 (Lastest)
execute if score #ver mc_ver matches 4671..4790 run function corebound:v1_21_6
#1.21.9 - 1.21.10
execute if score #ver mc_ver matches 4554..4556 run function corebound:v1_21_9
#1.21.0 - 1.21.8
execute if score #ver mc_ver matches 3953..4440 run function corebound:v1_21_6

# gm3nightvision
#1.21.9 - 26.1.2 (Lastest)
execute if score #ver mc_ver matches 4554..4790 run function gm3nightvision:v1_21_9
#1.21 - 1.21.8
execute if score #ver mc_ver matches 3953..4440 run function gm3nightvision:v1_21_0

# magnet
#1.21.5 - 26.1.2 (Lastest)
execute if score #ver mc_ver matches 4325..4790 run function magnet:v1_21_5
#1.21.2 - 1.21.4
execute if score #ver mc_ver matches 4080..4189 run function magnet:v1_21_2
#1.21 - 1.21.1
execute if score #ver mc_ver matches 3953..3955 run function magnet:v1_21_0

# newbie
#1.21.0
execute if score #ver mc_ver matches 3953.. run function 

# mobbars

# livestream_status
#1.21 - 26.1.2 (Lastest)
execute if score #ver mc_ver matches 3953..4790 run function livestream_status:load

# smetling
#1.21.2 - 26.1.2 (Lastest)
execute if score #ver mc_ver matches 4080..4790 run function smelting:v1_21_2
#1.21.0 - #1.21.1
execute if score #ver mc_ver matches 3953..3955 run function smelting:v1_21_0


# fallback
execute unless score #ver mc_ver matches 3953..4790 run tellraw @a [{"text":" [CoreBound: System] Unsupported Version - Use 1.21 to 26.1.2 (SNAPSHOTS NOT SUPPORTED)","color":"red"}]