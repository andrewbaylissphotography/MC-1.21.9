## CoreBound Live Stream Status

A lightweight Minecraft datapack that lets players toggle their LIVE status in-game.

When enabled, the player's name is marked with a 🔴 LIVE prefix and other players are notified in chat. The status is visible anywhere Minecraft displays the player's team prefix, including the player list (TAB) and chat.

## Usage

Use `/trigger live` to toggle your status.


The first use enables LIVE mode.
The next use disables it.
When LIVE is enabled
Your name receives a red LIVE indicator:
🔴 PlayerName
Other players receive a chat notification:
[LiveStatus] PlayerName is now LIVE!
When LIVE is disabled
The LIVE indicator is removed and other players receive:
[LiveStatus] PlayerName is no longer LIVE!

## How it Works

The datapack uses three scoreboard objectives:

| Objective | Purpose |
|---|---|
| `live` | Player-controlled trigger used to request a toggle |
| `live_state` | Stores whether the player is currently LIVE |
| `_state` | Temporary snapshot used while processing the toggle |


A dedicated Minecraft team named --LIVE-- provides the red LIVE prefix.

The datapack checks for player input every tick, processes the requested toggle, and then resets the trigger so it can be used again.

## Uninstalling

The datapack includes its own cleanup function.

When the datapack is unloaded, its cleanup function removes the scoreboards and team created by the datapack.

This removes:

live scoreboard
live_state scoreboard
_state scoreboard
--LIVE-- team
Scheduled datapack functions

can run uninstall manually by `/function livestream_status:uninstall`

## Compatibility

The datapack relies only on vanilla Minecraft commands and datapack functionality. No mods, plugins, or external software are required.

Minecraft Java Edition 1.21 through 26.1.2


## Development Notes
Some ideas and programming assistance were generated with the help of AI tools (ChatGPT) for brainstorming and function logic. All code was tested, integrated and reviewed manually. 

## Resources
https://vanillatweaks.net/

https://www.gamergeeks.net/apps/minecraft

https://misode.github.io/

https://chatgpt.com/

