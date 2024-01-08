#####################################################################
# studio/api/spawn.mcfunction
# written by Eroxen
#
# Summons a new studio.
#
# Storage input:
# - mcpaint:calc api.studio.spawn:
#   - width: block width
#   - height: block height
#   - facing: direction
#   - (optional) canvas: canvas object
#####################################################################

playsound minecraft:block.wood.place block @a[distance=..16] ~ ~ ~ 1 1
data modify storage mcpaint:calc internal.studio.spawn set value {width:1,height:1,facing:"north"}
data modify storage mcpaint:calc internal.studio.spawn merge from storage mcpaint:calc api.studio.spawn