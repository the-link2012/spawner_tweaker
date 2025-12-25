advancement revoke @s only additional_features:replace/detect/placed_torch
execute unless score @s toggle_replace matches 1.. run return 0

function additional_features:replace/detect/torch/use