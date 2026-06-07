scoreboard objectives add live trigger
scoreboard objectives add live_state dummy
scoreboard objectives add _state dummy

team add --LIVE--
team modify --LIVE-- prefix {"text":"🔴 ","color":"red","bold":true}

# debug check
tellraw @a [{"text":" [CoreBound: Live Stream]","color":"green"}]