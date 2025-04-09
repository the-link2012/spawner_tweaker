# =====================================================

# Additional Features

    # Auto Crafting

scoreboard players enable @a toggle_auto_crafting_torch
scoreboard players add @s toggle_auto_crafting_torch 0

# =====================================================

    # Replace

scoreboard players enable @a toggle_replace
scoreboard players add @s toggle_replace 0

execute as @a at @s run function additional_features:main/guide

# =====================================================