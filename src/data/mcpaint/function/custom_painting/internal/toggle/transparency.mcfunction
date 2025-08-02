execute store result score #custom_painting.transparency mcpaint.calc run data get storage mcpaint:calc internal.custom_painting.data.options.transparency -28
scoreboard players remove #custom_painting.transparency mcpaint.calc 1
execute if score #custom_painting.transparency mcpaint.calc matches ..-129 run scoreboard players add #custom_painting.transparency mcpaint.calc 256
execute on passengers if entity @s[type=text_display] store result entity @s text_opacity byte 1 run scoreboard players get #custom_painting.transparency mcpaint.calc