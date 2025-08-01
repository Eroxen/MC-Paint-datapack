execute if data storage mcpaint:calc internal.custom_painting.data.options{billboard:0b} run data modify entity @s billboard set value "fixed"
execute if data storage mcpaint:calc internal.custom_painting.data.options{billboard:0b} on passengers if entity @s[type=text_display] run data modify entity @s billboard set value "fixed"

execute if data storage mcpaint:calc internal.custom_painting.data.options{billboard:1b} run data modify entity @s billboard set value "horizontal"
execute if data storage mcpaint:calc internal.custom_painting.data.options{billboard:1b} on passengers if entity @s[type=text_display] run data modify entity @s billboard set value "horizontal"

execute if data storage mcpaint:calc internal.custom_painting.data.options{billboard:2b} run data modify entity @s billboard set value "vertical"
execute if data storage mcpaint:calc internal.custom_painting.data.options{billboard:2b} on passengers if entity @s[type=text_display] run data modify entity @s billboard set value "vertical"

execute if data storage mcpaint:calc internal.custom_painting.data.options{billboard:3b} run data modify entity @s billboard set value "center"
execute if data storage mcpaint:calc internal.custom_painting.data.options{billboard:3b} on passengers if entity @s[type=text_display] run data modify entity @s billboard set value "center"