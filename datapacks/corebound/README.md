# CoreBound System

CoreBound System is the core dependency datapack used by all CoreBound modules.

Its primary purpose is to provide a common framework for:

* Minecraft version detection
* First-join player initialization
* Shared storage values
* Global setup routines
* Datapack compatibility management
* Common uninstall procedures

By centralizing these systems, individual CoreBound modules can remain lightweight and only need to contain gameplay-specific logic.

## Features
### Automatic Version Detection

CoreBound detects the world's Minecraft DataVersion during setup and stores it in a scoreboard.

This allows dependent datapacks to automatically load the correct functions for:

* Minecraft 1.21 to 1.21.11
* Minecraft 26.1 to 26.1.2

Unsupported versions are automatically reported to server operators.

### First Join Detection

CoreBound continuously checks for players who have not yet been initialized.

When a new player joins:

1. The player receives the `corebound.init` tag.
2. A setup notification is displayed.
3. CoreBound executes the module bootstrap sequence.
4. Dependent datapacks can perform their own player setup routines.

This allows every module to reliably configure new players without duplicating join-detection logic.

### Shared Storage

CoreBound exposes storage values that other datapacks can check to verify that the core system is installed and running.

Example:

```mcfunction
data get storage corebound:core loaded
```

This allows dependent datapacks to safely detect CoreBound before executing version-specific logic.

### Version Routing

Instead of every datapack maintaining its own version checks, CoreBound acts as a central dispatcher.

Example:

```mcfunction
execute if score #ver mc_ver matches 4671 run function corebound:v1_21_11
```

Dependent modules can provide version-specific functions and allow CoreBound to route execution automatically.

### Installation

Place the datapack inside your world's datapacks folder:

```text
world/datapacks/corebound
```

Reload the datapacks:

```mcfunction
/reload
```

CoreBound will automatically:

* Create required scoreboards
* Detect Minecraft version
* Register storage values
* Run module initialization

### Uninstallation

CoreBound includes a cleanup routine that removes:

* Scoreboards
* Tags
* Storage entries

Run:

```mcfunction
/function corebound:uninstall
```

before removing the datapack from the world.

## Repository

GitHub:

github.com/andrewbaylissphotography/MC-1.21.9

## Releases

Official releases are published through GitHub Releases.

Each release includes automatically generated release notes showing:
- Added features
- Version support changes
- Bug fixes
- Module updates

Please use the latest release whenever possible.

## Development Notes

Some ideas and programming assistance were generated with the help of AI tools (ChatGPT) for brainstorming, documentation, and function logic.

All code was manually reviewed, tested, integrated, and maintained by the project author.

## Useful Resources

* [Vanilla Tweaks](https://vanillatweaks.net/)
* [GamerGeeks Minecraft Tools](https://www.gamergeeks.net/apps/minecraft)
* [Misode Datapack Generators](https://misode.github.io/)
* [ChatGPT](https://chatgpt.com/)
