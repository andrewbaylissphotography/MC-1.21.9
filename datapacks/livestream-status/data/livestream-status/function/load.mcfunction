scoreboard objectives add live trigger
scoreboard objectives add live_state dummy
scoreboard objectives add _state dummy

team add --LIVE--
team modify --LIVE-- prefix {"text":"[LIVE] ","color":"red","bold":true}

# debug check
tellraw @s {"text":"datapack: livestream-status LOADED","color":"yellow"}