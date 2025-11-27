# === Minecraft 1.21.x detailed version checks ===
# https://minecraft.wiki/w/Java_Edition_data_values/Protocol_and_data_versions

# Java Edition 1.21.10 - 4556
execute if score #ver mc_ver matches 4556 run function corebound:v1_21_9
execute if score #ver mc_ver matches 4556 run function gm3nightvision:v1_21_9
execute if score #ver mc_ver matches 4556 run function magnet:v1_21_9
execute if score #ver mc_ver matches 4556 run function mcfix:v1_21_9
execute if score #ver mc_ver matches 4556 run function mobbars:v1_21_9
execute if score #ver mc_ver matches 4556 run function newbie:v1_21_9
execute if score #ver mc_ver matches 4556 run function spawneggs:v1_21_9



# Java Edition 1.21.9 - 4554
execute if score #ver mc_ver matches 4554 run function corebound:v1_21_9

# Java Edition 1.21.8 - 4440
execute if score #ver mc_ver matches 4440 run function corebound:v1_21_6

# Java Edition 1.21.7 - 4438
execute if score #ver mc_ver matches 4438 run function corebound:v1_21_6

# Java Edition 1.21.6 - 4435
execute if score #ver mc_ver matches 4435 run function corebound:v1_21_6

# Java Edition 1.21.5 - 4325
execute if score #ver mc_ver matches 4325 run function corebound:v1_21_6

# Java Edition 1.21.4 - 4189
execute if score #ver mc_ver matches 4189 run function corebound:v1_21_6

# Java Edition 1.21.3 - 4082
execute if score #ver mc_ver matches 4082 run function corebound:v1_21_6

# Java Edition 1.21.2 - 4080
execute if score #ver mc_ver matches 4080 run function corebound:v1_21_6

# Java Edition 1.21.1 - 3955
execute if score #ver mc_ver matches 3955 run function corebound:v1_21_6

# Java Edition 1.21 - 3953
execute if score #ver mc_ver matches 3953 run function corebound:v1_21_6

# fallback
execute unless score #ver mc_ver matches 3953..4556 run tellraw @a [{"text":" [CoreBound: System] Unsupported Version - Use 1.21 to 1.21.10","color":"red"}]