execute as @a at @s if entity @s[tag=player.replace.torch] unless items entity @s weapon.mainhand * run function additional_features:replace/detect/torch/guide

tag @a remove player.replace.torch
schedule function additional_features:replace/detect/torch/main 1t