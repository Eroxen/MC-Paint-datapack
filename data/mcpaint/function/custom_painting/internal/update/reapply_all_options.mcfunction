function mcpaint:custom_painting/internal/update/background

execute if data storage mcpaint:calc internal.custom_painting.data.options{glowing:1b} on passengers if entity @s[type=text_display] run data modify entity @s brightness set value {sky:15,block:15}
execute if data storage mcpaint:calc internal.custom_painting.data.options{glowing:0b} on passengers if entity @s[type=text_display] run data remove entity @s brightness

function mcpaint:custom_painting/internal/toggle/axis_shading
function mcpaint:custom_painting/internal/toggle/show_name
function mcpaint:custom_painting/internal/toggle/billboard
function mcpaint:custom_painting/internal/toggle/transparency
function mcpaint:custom_painting/internal/toggle/roll with storage mcpaint:calc internal.custom_painting.data.options

execute if data storage mcpaint:calc internal.custom_painting.data.options{locked:1b} run function mcpaint:custom_painting/internal/toggle/locked