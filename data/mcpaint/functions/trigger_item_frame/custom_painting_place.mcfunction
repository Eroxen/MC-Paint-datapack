data modify storage mcpaint:calc custom_painting set value {marker:{},item_display:{},text_display:{},horizontal_direction:"north",vertical_direction:"level"}

execute if data storage mcpaint:calc trigger_item_frame{facing:"east"} run data modify storage mcpaint:calc custom_painting.horizontal_direction set value "east"
execute if data storage mcpaint:calc trigger_item_frame{facing:"south"} run data modify storage mcpaint:calc custom_painting.horizontal_direction set value "south"
execute if data storage mcpaint:calc trigger_item_frame{facing:"west"} run data modify storage mcpaint:calc custom_painting.horizontal_direction set value "west"
execute if data storage mcpaint:calc trigger_item_frame{facing:"up"} run data modify storage mcpaint:calc custom_painting.vertical_direction set value "up"
execute if data storage mcpaint:calc trigger_item_frame{facing:"up"} run data modify storage mcpaint:calc custom_painting.horizontal_direction set from storage mcpaint:calc trigger_item_frame.placer.horizontal_direction
execute if data storage mcpaint:calc trigger_item_frame{facing:"down"} run data modify storage mcpaint:calc custom_painting.vertical_direction set value "down"
execute if data storage mcpaint:calc trigger_item_frame{facing:"down"} run data modify storage mcpaint:calc custom_painting.horizontal_direction set from storage mcpaint:calc trigger_item_frame.placer.horizontal_direction

data modify storage mcpaint:calc custom_painting.settings set from storage mcpaint:calc trigger_item_frame.item_tag.settings
data modify storage mcpaint:calc custom_painting.filepath set from storage mcpaint:calc trigger_item_frame.item_tag.filepath

function mcpaint:custom_painting/summon
advancement grant @p only mcpaint:guide/place_custom_painting