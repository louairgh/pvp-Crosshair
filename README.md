# PvP Crosshair

## Overview
This script adds a customizable crosshair menu to your FiveM server, allowing players to personalize their aiming reticle. 
The menu includes options to adjust the crosshair's size, thickness, color, and more.

## Features
- Toggle crosshair on/off
- Enable center dot
- Adjust crosshair size, gap, and thickness
- Enable and customize the outline
- Change crosshair color
- Save custom crosshair settings
- Keybind support (default: `F2`)

## Preview

![Desktop Screenshot 2025 02 28 - 16 15 53 59](https://github.com/user-attachments/assets/52f65ddf-c103-4264-9e23-9d2b9b4d46a0)

## Installation
1. Download the script files and place them in your `resources` folder.
2. Add `start pvp_crosshair` to your `server.cfg`.
3. Restart your server.

## Configuration
Modify the `config.lua` file to customize the menu settings.

`config = {
  status = {
    title = "Status On/Off",
    description = "Enable Aim Point"
  },
  dot = {
    title = "Dot",
    description = "Enable the dot in the center of the Aim Point"
  },
  size = {
    title = "Size",
    description = "Change the size of the Aim Point"
  },
  gap = {
    title = "Gap",
    description = "Change the gap between the Aim Point"
  },
  thickness = {
    title = "Thickness",
    description = "Thickness of the Aim Point"
  },
  outline = {
    title = "Outline",
    description = "Enable the outline around the Aim Point"
  },
  outlineThickness = {
    title = "Outline Thickness",
    description = "Increase the thickness of the outline around the Aim Point"
  },
  color = {
    title = "Color",
    description = "Change the color of the Aim Point"
  },
  saveBtn = "Save Aim Point",
  keybind = "F2" -- Change this to your preferred key
}`

## Usage
- Open the crosshair menu by pressing `F2` (default keybind).
- Adjust settings as desired and save them.
- The crosshair will update in real-time.

## Support
For support and additional customization options, join our Discord development community at:
[@louairgh](https://discord.gg/pWFauqPYwS). 🚀
