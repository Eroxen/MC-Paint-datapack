execute store success score bool mcpaint.calc if data entity @s {alignment:left}
execute if score bool mcpaint.calc matches 0 run data modify entity @s alignment set value "left"
execute if score bool mcpaint.calc matches 1 run data modify entity @s alignment set value "center"

tag @s remove mcpaint.text_display.reload