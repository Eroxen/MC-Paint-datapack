data modify storage mcpaint:calc Item set from entity @s data.Inventory
data modify storage mcpaint:calc Item.tag.pages set from entity @s data.task.data.strings
execute at @s positioned ^ ^ ^0.7 run function mcpaint:item/drop_motion
data remove entity @s data.Inventory

function mcpaint:block/computer/task/finish
advancement grant @p only mcpaint:guide/encode_base64