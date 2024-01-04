scoreboard players set changed mcpaint.calc 0

execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:glow_ink_sac"}} if data entity @s data.settings{glowing:0b} run playsound minecraft:item.glow_ink_sac.use block @a[distance=..32] ~ ~ ~
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:glow_ink_sac"}} if data entity @s data.settings{glowing:0b} run scoreboard players set changed mcpaint.calc 1
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:glow_ink_sac"}} if data entity @s data.settings{glowing:0b} run advancement grant @p only mcpaint:guide/set_glowing
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:glow_ink_sac"}} if data entity @s data.settings{glowing:0b} run data modify entity @s data.settings.glowing set value 1b

execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:ink_sac"}} if data entity @s data.settings{glowing:1b} run playsound minecraft:item.ink_sac.use block @a[distance=..32] ~ ~ ~
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:ink_sac"}} if data entity @s data.settings{glowing:1b} run scoreboard players set changed mcpaint.calc 1
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:ink_sac"}} if data entity @s data.settings{glowing:1b} run data modify entity @s data.settings.glowing set value 0b

execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:shears"}} unless data entity @s data.settings{background:"none"} run playsound minecraft:entity.sheep.shear block @a[distance=..32] ~ ~ ~
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:shears"}} unless data entity @s data.settings{background:"none"} run scoreboard players set changed mcpaint.calc 1
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:shears"}} unless data entity @s data.settings{background:"none"} run advancement grant @p only mcpaint:guide/set_no_background
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:shears"}} unless data entity @s data.settings{background:"none"} run data modify entity @s data.settings.background set value "none"

execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:white_wool"}} unless data entity @s data.settings{background:"canvas"} run playsound minecraft:block.wool.place block @a[distance=..32] ~ ~ ~
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:white_wool"}} unless data entity @s data.settings{background:"canvas"} run scoreboard players set changed mcpaint.calc 1
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:white_wool"}} unless data entity @s data.settings{background:"canvas"} run data modify entity @s data.settings.background set value "canvas"

execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:spyglass"}} store success score on mcpaint.calc if data entity @s data.settings{long_view_range:1b}
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:spyglass"}} if score on mcpaint.calc matches 0 run playsound minecraft:block.beacon.activate block @a[distance=..32] ~ ~ ~ 0.5 1.5
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:spyglass"}} if score on mcpaint.calc matches 0 rotated as @s run particle minecraft:glow ^ ^ ^0.2 0 0 0 1 5
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:spyglass"}} if score on mcpaint.calc matches 0 run advancement grant @p only mcpaint:guide/set_far_view_range
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:spyglass"}} if score on mcpaint.calc matches 1 run playsound minecraft:block.beacon.deactivate block @a[distance=..32] ~ ~ ~ 0.5 1.5
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:spyglass"}} if score on mcpaint.calc matches 1 rotated as @s run particle minecraft:smoke ^ ^ ^0.2 0 0 0 0 5
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:spyglass"}} run scoreboard players set changed mcpaint.calc 1
execute if data storage mcpaint:calc interactor{SelectedItem:{id:"minecraft:spyglass"}} store success entity @s data.settings.long_view_range byte 1 if score on mcpaint.calc matches 0



execute if score changed mcpaint.calc matches 1 run data modify storage mcpaint:calc custom_painting set value {marker:{},item_display:{},text_display:{}}
execute if score changed mcpaint.calc matches 1 run data modify storage mcpaint:calc custom_painting.settings set from entity @s data.settings
execute if score changed mcpaint.calc matches 1 run data modify storage mcpaint:calc filepath set from entity @s data.filepath
execute if score changed mcpaint.calc matches 1 run function mcpaint:database/open_filepath
execute if score changed mcpaint.calc matches 1 run data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:database search.work.canvas
execute if score changed mcpaint.calc matches 1 run function mcpaint:canvas/api/get_info
execute if score changed mcpaint.calc matches 1 on vehicle if entity @s[type=item_display,tag=mcpaint.custom_painting.item_display] run data modify storage mcpaint:calc custom_painting.item_display set from entity @s {}
execute if score changed mcpaint.calc matches 1 on vehicle on passengers if entity @s[type=text_display,tag=mcpaint.custom_painting.text_display] run data modify storage mcpaint:calc custom_painting.text_display set from entity @s {}
execute if score changed mcpaint.calc matches 1 run function mcpaint:custom_painting/fix_settings
execute if score changed mcpaint.calc matches 1 run function mcpaint:custom_painting/apply_settings
execute if score changed mcpaint.calc matches 1 on vehicle if entity @s[type=item_display,tag=mcpaint.custom_painting.item_display] run data modify entity @s {} merge from storage mcpaint:calc custom_painting.item_display
execute if score changed mcpaint.calc matches 1 on vehicle on passengers if entity @s[type=text_display,tag=mcpaint.custom_painting.text_display] run data modify entity @s {} merge from storage mcpaint:calc custom_painting.text_display
execute if score changed mcpaint.calc matches 1 on vehicle on passengers if entity @s[type=text_display,tag=mcpaint.custom_painting.text_display] if data entity @s brightness unless data storage mcpaint:calc custom_painting.text_display.brightness run data remove entity @s brightness