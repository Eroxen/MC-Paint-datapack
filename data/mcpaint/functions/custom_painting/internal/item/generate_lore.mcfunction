$data modify storage mcpaint:calc internal.custom_painting.item.components.minecraft:lore set value [\
'{"translate":"item.mcpaint.custom_painting.lore.work_name","color":"yellow","italic":false,"with":["$(title)"]}',\
'{"translate":"item.mcpaint.custom_painting.lore.author_name","color":"gray","italic":false,"with":["$(author)"]}',\
'{"translate":"item.mcpaint.custom_painting.lore.size","color":"white","italic":false,"with":[$(width_blocks),$(width_blocks),{"translate":"item.mcpaint.custom_painting.lore.size_detail","color":"dark_gray","with":[$(width_px),$(height_px),$(text_size_formatted)]}]}',\
]
function mcpaint:custom_painting/internal/item/generate_options_lore with storage mcpaint:calc internal.custom_painting.data.options