scoreboard players set #custom_painting.view_range mcpaint.calc 1
execute if data storage mcpaint:calc internal.custom_painting.data.options{view_range:1b} run scoreboard players set #custom_painting.view_range mcpaint.calc 2
execute if data storage mcpaint:calc internal.custom_painting.data.options{view_range:2b} run scoreboard players set #custom_painting.view_range mcpaint.calc 4
execute if data storage mcpaint:calc internal.custom_painting.data.options{view_range:3b} run scoreboard players set #custom_painting.view_range mcpaint.calc 8

$data modify storage mcpaint:calc internal.custom_painting.title set value '{"translate":"item.mcpaint.custom_painting.lore.options.view_range.$(view_range)"}'
execute if score #custom_painting.interaction.clicked mcpaint.calc matches 1 run scoreboard players set #custom_painting.interaction.send_title mcpaint.calc 1

execute on passengers if entity @s[type=text_display] store result entity @s view_range float 0.2 run scoreboard players get #custom_painting.view_range mcpaint.calc
execute store result entity @s view_range float 0.33 run scoreboard players get #custom_painting.view_range mcpaint.calc