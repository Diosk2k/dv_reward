# ESX Random Reward System

This project is a random reward system for the ESX framework in FiveM. Players receive random rewards at specified intervals, which can include money or various items.

## Features

- Automatically gives players random rewards at set intervals.
- Configurable rewards and chances for each item.
- Notifications to players when they receive a reward.

## Requirements

- [es_extended (ESX)](https://github.com/esx-framework/es_extended)
- [ox_inventory](https://github.com/overextended/ox_inventory)

## Installation

1. Clone or download this repository.
2. Place the folder in your `resources` directory.
3. Add `ensure your_resource_name` to your `server.cfg`.

## Configuration

You can configure the rewards and the interval between rewards in the `config.lua` file.

```lua
Config = {}
Config.RewardInterval = 100000 -- Interval in milliseconds

Config.Rewards = {
    {item = "bagel", chance = 60},
    {item = "water", chance = 60},
    {item = "tosti", chance = 60},
    {item = "bulletproof_small", chance = 5},
    {item = "money", chance = 70}
}
