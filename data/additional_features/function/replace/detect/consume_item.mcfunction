advancement revoke @s only additional_features:replace/detect/consume_item
execute unless score @s toggle_replace matches 1.. run return 0

function additional_features:replace/detect/food/use