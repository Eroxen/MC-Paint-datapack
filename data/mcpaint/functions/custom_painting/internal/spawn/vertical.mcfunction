$execute rotated $(y_rotation) $(x_rotation) positioned ^-0.1875 ^ ^-0.5 positioned ~ ~-0.375 ~ unless entity @e[type=interaction,tag=mcpaint.custom_painting.interaction.vertical,distance=..0.1] run summon minecraft:interaction ~ ~ ~ {Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.custom_painting","mcpaint.custom_painting.interaction","mcpaint.custom_painting.interaction.vertical","mcpaint.custom_painting.interaction.axis_$(facing_axis)","eroxified2.interaction"],width:0.375,height:0.75,response:1b}
$execute rotated $(y_rotation) $(x_rotation) positioned ^0.1875 ^ ^-0.5 positioned ~ ~-0.375 ~ unless entity @e[type=interaction,tag=mcpaint.custom_painting.interaction.vertical,distance=..0.1] run summon minecraft:interaction ~ ~ ~ {Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.custom_painting","mcpaint.custom_painting.interaction","mcpaint.custom_painting.interaction.vertical","mcpaint.custom_painting.interaction.axis_$(facing_axis)","eroxified2.interaction"],width:0.375,height:0.75,response:1b}