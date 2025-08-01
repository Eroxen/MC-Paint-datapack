data modify storage mcpaint:calc internal.custom_painting.data set from entity @n[type=item_display,tag=mcpaint.custom_painting.item_display,distance=..0.3] item.components."minecraft:custom_data".mcpaint.custom_painting

data modify storage mcpaint:calc api.projector_tape.filepath set from storage mcpaint:calc internal.custom_painting.data.filepath
execute on target at @s run function mcpaint:item/projector_tape/api/set_filepath