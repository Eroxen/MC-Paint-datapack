#####################################################################
# paint_bucket/api/interaction_lclicked.mcfunction
# written by Eroxen
#
# Called when the interaction is left-clicked,
# as the interaction.
#####################################################################

playsound minecraft:block.lantern.break block @a[distance=..32] ~ ~ ~ 1 1
particle minecraft:block{block_state:{Name:"minecraft:iron_block"}} ~ ~0.25 ~ 0.05 0.1 0.05 0 4
execute on passengers if entity @s[type=item_display] run function mcpaint:item/paint_bucket/internal/break/generate_item
function eroxified2:entity/api/kill_stack