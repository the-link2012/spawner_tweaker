# =====================================================

# Additional Features

    # Auto Crafting

scoreboard players set @s[scores={toggle_auto_crafting_torch=2..}] toggle_auto_crafting_torch 0

execute if score @s toggle_auto_crafting_torch matches 1.. run advancement grant @s only additional_features:auto_crafting/tips/torch/true
execute unless score @s toggle_auto_crafting_torch matches 1.. run advancement grant @s only additional_features:auto_crafting/tips/torch/false

# If Enable

execute if score @s toggle_auto_crafting_torch matches 1 if items entity @s container.* coal if items entity @s container.* stick run function additional_features:auto_crafting/torch/run

# =====================================================

    # Replace

scoreboard players set @s[scores={toggle_replace=2..}] toggle_replace 0
execute if score @s toggle_replace matches 1.. run advancement grant @s only additional_features:replace/tips/true
execute unless score @s toggle_replace matches 1.. run advancement grant @s only additional_features:replace/tips/false