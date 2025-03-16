#The sequal to my inner death
setblock ~ ~ ~ air
kill @e[distance=..1,type=item,nbt={Age:0s}]
$setblock ~ ~ ~ $(block)[$(facing)$(type)$(waterlogged)$(open)]