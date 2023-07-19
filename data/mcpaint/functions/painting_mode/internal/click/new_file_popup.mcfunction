execute if data storage mcpaint:calc painter_tick.intersect.child{button:"cancel"} run data modify storage mcpaint:calc painter_command set value {command:"popup.cancel"}
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"cancel"} run function mcpaint:painting_mode/sound/generic_button

execute if data storage mcpaint:calc painter_tick.intersect.child{button:"ok"} run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.ok"}
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"ok"} run function mcpaint:painting_mode/sound/generic_button

execute if data storage mcpaint:calc painter_tick.intersect.child{button:"block_width"} store result score #temp.current_value mcpaint.calc run data get storage mcpaint:calc popup.width_blocks 1
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"pixel_width"} store result score #temp.current_value mcpaint.calc run data get storage mcpaint:calc popup.width_px 1
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"block_height"} store result score #temp.current_value mcpaint.calc run data get storage mcpaint:calc popup.height_blocks 1
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"pixel_height"} store result score #temp.current_value mcpaint.calc run data get storage mcpaint:calc popup.height_px 1
execute if data storage mcpaint:calc painter_tick.intersect.child.direction unless score @s mcpaint.sneak matches 1.. store result score #temp.new_value mcpaint.calc run data get storage mcpaint:calc painter_tick.intersect.child.direction 1
execute if data storage mcpaint:calc painter_tick.intersect.child.direction if score @s mcpaint.sneak matches 1.. store result score #temp.new_value mcpaint.calc run data get storage mcpaint:calc painter_tick.intersect.child.direction 10
scoreboard players operation #temp.new_value mcpaint.calc += #temp.current_value mcpaint.calc
execute if score #temp.new_value mcpaint.calc matches ..0 run scoreboard players set #temp.new_value mcpaint.calc 1
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"block_width"} if score #temp.new_value mcpaint.calc matches 5.. run scoreboard players set #temp.new_value mcpaint.calc 4
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"block_height"} if score #temp.new_value mcpaint.calc matches 3.. run scoreboard players set #temp.new_value mcpaint.calc 2
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"pixel_width"} if score #temp.new_value mcpaint.calc matches 65.. run scoreboard players set #temp.new_value mcpaint.calc 64
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"pixel_height"} if score #temp.new_value mcpaint.calc matches 65.. run scoreboard players set #temp.new_value mcpaint.calc 64
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"block_width"} store result storage mcpaint:calc popup.width_blocks int 1 run scoreboard players get #temp.new_value mcpaint.calc
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"block_width"} store result storage mcpaint:calc popup.width_px int 16 run scoreboard players get #temp.new_value mcpaint.calc
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"pixel_width"} store result storage mcpaint:calc popup.width_px int 1 run scoreboard players get #temp.new_value mcpaint.calc
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"block_height"} store result storage mcpaint:calc popup.height_blocks int 1 run scoreboard players get #temp.new_value mcpaint.calc
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"block_height"} store result storage mcpaint:calc popup.height_px int 16 run scoreboard players get #temp.new_value mcpaint.calc
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"pixel_height"} store result storage mcpaint:calc popup.height_px int 1 run scoreboard players get #temp.new_value mcpaint.calc
execute if data storage mcpaint:calc painter_tick.intersect.child.direction unless score #temp.new_value mcpaint.calc = #temp.current_value mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.update"}
execute if data storage mcpaint:calc painter_tick.intersect.child.direction unless score #temp.new_value mcpaint.calc = #temp.current_value mcpaint.calc run function mcpaint:painting_mode/sound/generic_button

execute if data storage mcpaint:calc painter_tick.intersect.child{button:"filename"} unless data entity @s SelectedItem{id:"minecraft:writable_book"} run tellraw @s {"translate":"mcpaint.message.must_hold_writable_book"}
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"filename"} if data entity @s SelectedItem{id:"minecraft:writable_book"} run data modify storage mcpaint:calc math.string set from entity @s SelectedItem.tag.pages[0]
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"filename"} if data entity @s SelectedItem{id:"minecraft:writable_book"} run function mcpaint:math/api/limit_string_length
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"filename"} if data entity @s SelectedItem{id:"minecraft:writable_book"} run data modify storage mcpaint:calc popup.filename set from storage mcpaint:calc math.string
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"filename"} if data entity @s SelectedItem{id:"minecraft:writable_book"} run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.update"}
execute if data storage mcpaint:calc painter_tick.intersect.child{button:"filename"} if data entity @s SelectedItem{id:"minecraft:writable_book"} run function mcpaint:painting_mode/sound/generic_button