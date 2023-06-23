data modify entity @s data.computer_page.valid set value 0b
execute if data entity @s data.computer_page.canvas if data entity @s data.computer_page.filename run data modify entity @s data.computer_page.valid set value 1b

execute if data entity @s data.computer_page{valid:0b} at @s rotated as @s positioned ^ ^ ^0.55 run data modify entity @e[type=item_display,tag=mcpaint.computer.item_display.block,distance=..0.1,limit=1] item set from storage mcpaint:calc custom_models.computer_import
execute if data entity @s data.computer_page{valid:1b} at @s rotated as @s positioned ^ ^ ^0.55 run data modify entity @e[type=item_display,tag=mcpaint.computer.item_display.block,distance=..0.1,limit=1] item set from storage mcpaint:calc custom_models.computer_import_blinking

data modify storage mcpaint:calc filename set from entity @s data.computer_page.filename
execute at @s rotated as @s positioned ^ ^ ^0.55 run data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.import.filename,distance=..0.1,limit=1] text set value '{"nbt":"filename","storage":"mcpaint:calc"}'