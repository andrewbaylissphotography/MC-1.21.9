# CoreBound Buffs on Death

Gives the player respawn buffs/protection for 10 seconds

`execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:resistance 10 1`
`execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:strength 10 1`
`execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:regeneration 10 1`
`execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:fire_resistance 10 1`
`execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:invisibility 10 1`
`execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:absorption 10 1`

## Development Notes
Some ideas and programming assistance were generated with the help of AI tools (ChatGPT) for briainstorming and function logic. All code was tested, intergrated and reviewed manually. 

## Resources
https://vanillatweaks.net/

https://www.gamergeeks.net/apps/minecraft

https://misode.github.io/

https://chatgpt.com/

