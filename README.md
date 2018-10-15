# This project is dedicated to renewing the ability for Minecraft servers to use native bukkit plugins along with Forge mods, for Minecraft.

# Thermos 1.10.2 Branch

![Thermos](thermos_icon.png)
<!--- ![Graph](http://i.mcstats.org/Thermos/Global+Statistics@2x.borderless.png) --->

[![Build Status](https://travis-ci.org/Terminal-Access/Thermos.svg?branch=1.10.x)](https://travis-ci.org/Terminal-Access/Thermos)
![Minecraft Forge v13.20.1.2511][forge]
![Minecraft v1.10.2][mc]
![Java JDK v1.8][java]
![Spigot 1.10.2 Snapshot][spigot]

### What's Thermos?
Thermos is a fork of KCauldron, a craftbukkit forge server for Minecraft 1.7.10. After periods of inactivity on KCauldron's GitLab concerning major issues, Thermos was created to allow active members of the Minecraft coding community to optimize it and provide fixes in a timely manner.

We hope to eliminate all issues with craftbukkit forge servers. In the end, we envision a seamless, low lag Thermos experience.

Advantages over KCauldron:
+ Lag-lowering optimizations
+ Better world protection (Forge stuff doesn't bypass Bukkit plugins!)
+ Many patches that KCauldron didn't get from Spigot
+ Dupe glitch fixes


## Installation
Click [here](http://imaginarium.github.io/Thermos/install)

## Downloads
You can download the pre-built packages from [here](https://github.com/Terminal-Access/Thermos/releases). 

**Thermos is still in beta and you may encounter issues in using it with your server. You have been warned!**

P.S. **PLEASE** look at the release notes before downloading! :smile:

##Installing WarmRoast
[Tutorial Video](https://youtu.be/c0ffjooX7Jw)

## Chat

Feel free to drop in on the Imaginarium Discord chat [here](https://discord.gg/ZxPJnDZ)

## Donate/Support

N\A

## Contributing

Please read the [guide](https://github.com/Terminal-Access/Thermos/blob/master/CONTRIBUTING.md) on how to contribute - Thermos always needs improvements :smile: 

## Build Requirements
* Java 8u101 JDK or higher
* `JAVA_HOME` defined on your OS

## Building Terminal-Access/Thermos
* Checkout project
  * You can use IDE or clone from console:
  `git clone https://github.com/Terminal-Access/Thermos.git`
* Setup
  * Auto: `setup.sh`
  * Manual:
  `git submodule update --init --recursive`
* Build
  * This process downloads minecraft and apply patches
  * If you have gradle integration in IDE - you can still use gui
  * Auto: `build.sh`
  * Manual:
  `./gradlew setupCauldron jar`

All builds will be in `build/distributions`
  
## Updating sources
* Update sources
  * `git pull origin master`
* Re apply patches & build binaries
  * `./gradlew clean setupCauldron jar`

## Known Issues, use provided fixes at your own risk.

✔ Aether II: isDonor function can lock up servers. [Fixed]

✔ BungeeCord: It's been known for years that BungeeCord barely works with Forge & seems that it'll never be supported officially. [Fixed] Use [Waterfall](https://github.com/WaterfallMC/Waterfall) instead

✔ BuyCraftX: Doesn't seem to work with Thermos, info on why it doesn't is unknown currently. [Fixed]

✔ Citizens: Not compatible with forge [Fixed]

✖ Lilypad: 100% not compatible with Forge, lead developer has declined to add support when asked.

✔ DraconicEvolution: P keybind will bypass protection. [Fixed]

✔ Factions + MassiveCore: No protection from Forge items. [Fixed]

✔ TuxTwoLib: Didn't work with Thermos at all [Fixed]

✔ Mobius / Opis: You can download fixed version [HERE](https://cdn.discordapp.com/attachments/172072987154055168/186577486593785857/MobiusCore-1.2.5-Thermos.jar)

✔ SkinsRestorer: Latest working version is 10.4.4

[Fixed]: http://gogs.tcpr.ca/TCPR/Fixes "Fixed"
[Forge]: https://img.shields.io/badge/Minecraft%20Forge-v13.20.1.2511-green.svg "Minecraft Forge v13.20.1.2511"
[mc]: https://img.shields.io/badge/Minecraft-v1.11.2-green.svg "Minecraft 1.11.2"
[java]: https://img.shields.io/badge/Java%20JDK-v1.8-blue.svg "Java JDK 8"
[spigot]: https://img.shields.io/badge/Spigot-v1.11.2--R0.1--SNAPSHOT-green.svg "Spigot 1.11.2 R0.1 Snapshot"
