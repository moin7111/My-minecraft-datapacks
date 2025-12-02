# Minecraft Datapacks - Installation Guide

This guide explains how to install and use the two datapacks **Creative Dimension Portal** and **Playtime Tracker** in Minecraft.

## 📋 Requirements

- Minecraft Java Edition (Version 1.21.5 or higher, uses `pack_format` 88)
- A Minecraft world (Singleplayer or Multiplayer with admin rights)

## 🚀 Installation

### Step 1: Copy Datapacks to Your World

1. **Find your Minecraft world folder:**
   - Windows: `%APPDATA%\.minecraft\saves\[WorldName]\datapacks\`
   - Mac: `~/Library/Application Support/minecraft/saves\[WorldName]\datapacks\`
   - Linux: `~/.minecraft/saves/[WorldName]/datapacks/`

2. **Copy both datapack folders:**
   - Copy the `creative_dimension_portal` folder into the `datapacks` folder
   - Copy the `playtime_tracker` folder into the `datapacks` folder

### Step 2: Enable Datapacks in Minecraft

**Option A: When Creating a New World**
1. Create a new world
2. Click on "Data Packs"
3. Move both datapacks from left to right (available → selected)
4. Create the world

**Option B: In an Existing World**
1. Load the world
2. Run the command `/reload`
3. Check with `/datapack list` if both datapacks are loaded

### Step 3: Initialize Datapacks

The datapacks will automatically initialize on first load. You can verify with:

```
/datapack list
```

You should see both datapacks in the list:
- `file/creative_dimension_portal`
- `file/playtime_tracker`

## 📦 Datapack 1: Creative Dimension Portal

### What does it do?

This datapack creates a separate Creative dimension that players can teleport to. Perfect for servers where players want to build their projects in a separate dimension.

### Usage

**Enter the Creative Dimension:**
```
/trigger creative_enter
```

**Return to your original dimension:**
```
/trigger creative_exit
```

### Features

- ✅ Teleportation to a separate Creative flat dimension
- ✅ Automatic switch to Creative mode
- ✅ Remembers your original position and dimension
- ✅ Returns you to your exact position
- ✅ Supports Overworld, Nether, and End as origin dimensions

## 📊 Datapack 2: Playtime Tracker

### What does it do?

This datapack tracks each player's playtime in days, hours, and minutes.

### Usage

**Default sidebar:**

The datapack automatically shows the total playtime in minutes (objective `pt_total_minutes`).  
If you removed it, restore it with:
```
/scoreboard objectives setdisplay sidebar pt_total_minutes
```

**Alternative views:**
```
/scoreboard objectives setdisplay sidebar pt_day   # Total days
/scoreboard objectives setdisplay sidebar pt_hr    # Current hour (0-23)
/scoreboard objectives setdisplay sidebar pt_min   # Current minute (0-59)
```

**Query a player's playtime:**
```
/scoreboard players get <PlayerName> pt_total_minutes
/scoreboard players get <PlayerName> pt_total_hours
/scoreboard players get <PlayerName> pt_day
/scoreboard players get <PlayerName> pt_hr
/scoreboard players get <PlayerName> pt_min
```

### Scoreboards

The datapack creates the following scoreboards:
- `pt_total_minutes` - Total playtime in minutes (auto sidebar)
- `pt_total_hours` - Total playtime in full hours
- `pt_day` - Playtime in days
- `pt_hr` - Playtime in hours (0-23)
- `pt_min` - Playtime in minutes (0-59)
- `pt_tick` - Internal tick counter
- `pt_const` - Helper constants (ticks/min/hour/day)
- `pt_import` - Import flag per player
- `pt_stat` - Vanilla `play_time` stat mirror
- `pt_calc` - Temp scoreboard for conversions

## 🔧 Troubleshooting

### Datapacks not loading

1. Check that the folders are directly in the `datapacks` folder
2. Make sure the `pack.mcmeta` files are present
3. Use `/reload` to reload the datapacks

### Creative Dimension not working

1. Make sure you're in Survival or Adventure mode
2. Check with `/datapack list` if the datapack is enabled
3. Try `/reload` and then `/trigger creative_enter` again

### Playtime Tracker shows no values

1. Playtime starts at 0 when the datapack is newly installed
2. Play for at least 1 minute so the sidebar can refresh
3. Use `/scoreboard players list @s` to see your current scores

## 🎮 Quick Start (TL;DR)

1. Copy both folders to `saves/[WorldName]/datapacks/`
2. Start Minecraft and load the world
3. Run `/reload`
4. Test the Creative dimension with `/trigger creative_enter`
5. Show your playtime with `/scoreboard objectives setdisplay sidebar pt_total_minutes`

## 📝 Notes

- The Creative dimension is a flat world (Superflat)
- All player data is stored in scoreboards and persists across restarts
- The datapacks are optimized for Minecraft version 1.21.5+ (pack_format 88)

Enjoy the datapacks! 🎉
