playsound minecraft:block.wood.place block @a[distance=..16] ~ ~ ~ 1 1
data modify storage mcpaint:calc spawn_studio.could_spawn set value 1b

execute if data storage mcpaint:calc spawn_studio{facing:"north"} unless data storage mcpaint:calc spawn_studio.facing_rotation run data modify storage mcpaint:calc spawn_studio.facing_rotation set value [180f,0f]
execute if data storage mcpaint:calc spawn_studio{facing:"east"} unless data storage mcpaint:calc spawn_studio.facing_rotation run data modify storage mcpaint:calc spawn_studio.facing_rotation set value [270f,0f]
execute if data storage mcpaint:calc spawn_studio{facing:"south"} unless data storage mcpaint:calc spawn_studio.facing_rotation run data modify storage mcpaint:calc spawn_studio.facing_rotation set value [0f,0f]
execute if data storage mcpaint:calc spawn_studio{facing:"west"} unless data storage mcpaint:calc spawn_studio.facing_rotation run data modify storage mcpaint:calc spawn_studio.facing_rotation set value [90f,0f]

summon marker ~ ~ ~ {Tags:["mcpaint.studio","mcpaint.studio.marker","mcpaint.studio.marker.new"],data:{width:1,height:1,ui:{},filename:"unnamed",unsaved_changes:0b}}
execute if data storage mcpaint:calc spawn_studio.size.width run data modify entity @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] data.width set from storage mcpaint:calc spawn_studio.size.width
execute if data storage mcpaint:calc spawn_studio.size.height run data modify entity @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] data.height set from storage mcpaint:calc spawn_studio.size.height
execute if data storage mcpaint:calc spawn_studio.filename run data modify entity @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] data.filename set from storage mcpaint:calc spawn_studio.filename
execute if data storage mcpaint:calc spawn_studio.unsaved_changes run data modify entity @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] data.unsaved_changes set from storage mcpaint:calc spawn_studio.unsaved_changes
execute as @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] run function mcpaint:studio/get_default_data
data modify entity @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] data.facing set from storage mcpaint:calc spawn_studio.facing
data modify entity @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] data.ui set from storage mcpaint:calc studio_data.ui
data modify entity @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] Rotation set from storage mcpaint:calc spawn_studio.facing_rotation
execute store result score canvas_width_blocks mcpaint.calc run data get entity @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] data.width 1
execute store result score canvas_height_blocks mcpaint.calc run data get entity @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] data.height 1
scoreboard players set canvas_width_px mcpaint.calc 16
scoreboard players set canvas_height_px mcpaint.calc 16
scoreboard players operation canvas_width_px mcpaint.calc *= canvas_width_blocks mcpaint.calc
scoreboard players operation canvas_height_px mcpaint.calc *= canvas_height_blocks mcpaint.calc
execute unless data storage mcpaint:calc spawn_studio.canvas run function mcpaint:canvas/create_empty_canvas
execute if data storage mcpaint:calc spawn_studio.canvas run data modify storage mcpaint:calc canvas set from storage mcpaint:calc spawn_studio.canvas
execute if data storage mcpaint:calc spawn_studio.canvas run function mcpaint:canvas/get_info
data modify entity @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] data.canvas set from storage mcpaint:calc canvas

execute if data storage mcpaint:calc spawn_studio{facing:"north"} run summon text_display ~ ~ ~ {Rotation:[180f,0f],Tags:["mcpaint.studio","mcpaint.studio.text_display","mcpaint.studio.text_display.new"],background:0,line_width:10000,view_range:0.5}
execute if data storage mcpaint:calc spawn_studio{facing:"east"} run summon text_display ~ ~ ~ {Rotation:[270f,0f],Tags:["mcpaint.studio","mcpaint.studio.text_display","mcpaint.studio.text_display.new"],background:0,line_width:10000,view_range:0.5}
execute if data storage mcpaint:calc spawn_studio{facing:"south"} run summon text_display ~ ~ ~ {Rotation:[0f,0f],Tags:["mcpaint.studio","mcpaint.studio.text_display","mcpaint.studio.text_display.new"],background:0,line_width:10000,view_range:0.5}
execute if data storage mcpaint:calc spawn_studio{facing:"west"} run summon text_display ~ ~ ~ {Rotation:[90f,0f],Tags:["mcpaint.studio","mcpaint.studio.text_display","mcpaint.studio.text_display.new"],background:0,line_width:10000,view_range:0.5}
data modify entity @e[type=text_display,tag=mcpaint.studio.text_display.new,distance=..0.1,limit=1] text set from storage mcpaint:calc canvas.resolved_text
data modify storage mcpaint:calc EntityData set value {scale:[1f,1f,1f],translation:[0f,0f,-0.4375f]}

function mcpaint:custom_painting/scale_and_offset
execute store result storage mcpaint:calc EntityData.scale[0] float 0.00009766 run scoreboard players get scale_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.scale[1] float 0.00009766 run scoreboard players get scale_y mcpaint.calc
execute store result storage mcpaint:calc EntityData.translation[0] float -0.000009766 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.translation[1] float -0.000009766 run scoreboard players get offset_y mcpaint.calc
data modify entity @e[type=text_display,tag=mcpaint.studio.text_display.new,distance=..0.1,limit=1] transformation merge from storage mcpaint:calc EntityData

execute if data storage mcpaint:calc spawn_studio{facing:"north"} run summon item_display ~ ~ ~ {Rotation:[180f,0f],Tags:["mcpaint.studio","mcpaint.studio.item_display","mcpaint.studio.item_display.new","mcpaint.studio.item_display.border"],item_display:"fixed"}
execute if data storage mcpaint:calc spawn_studio{facing:"east"} run summon item_display ~ ~ ~ {Rotation:[270f,0f],Tags:["mcpaint.studio","mcpaint.studio.item_display","mcpaint.studio.item_display.new","mcpaint.studio.item_display.border"],item_display:"fixed"}
execute if data storage mcpaint:calc spawn_studio{facing:"south"} run summon item_display ~ ~ ~ {Rotation:[0f,0f],Tags:["mcpaint.studio","mcpaint.studio.item_display","mcpaint.studio.item_display.new","mcpaint.studio.item_display.border"],item_display:"fixed"}
execute if data storage mcpaint:calc spawn_studio{facing:"west"} run summon item_display ~ ~ ~ {Rotation:[90f,0f],Tags:["mcpaint.studio","mcpaint.studio.item_display","mcpaint.studio.item_display.new","mcpaint.studio.item_display.border"],item_display:"fixed"}
data modify entity @e[type=item_display,tag=mcpaint.studio.item_display.new,tag=mcpaint.studio.item_display.border,distance=..0.1,limit=1] item set from storage mcpaint:calc studio_data.border_model

execute if data storage mcpaint:calc spawn_studio{facing:"north"} run summon item_display ~ ~ ~ {Rotation:[180f,0f],Tags:["mcpaint.studio","mcpaint.studio.item_display","mcpaint.studio.item_display.new","mcpaint.studio.item_display.bg"],item_display:"fixed"}
execute if data storage mcpaint:calc spawn_studio{facing:"east"} run summon item_display ~ ~ ~ {Rotation:[270f,0f],Tags:["mcpaint.studio","mcpaint.studio.item_display","mcpaint.studio.item_display.new","mcpaint.studio.item_display.bg"],item_display:"fixed"}
execute if data storage mcpaint:calc spawn_studio{facing:"south"} run summon item_display ~ ~ ~ {Rotation:[0f,0f],Tags:["mcpaint.studio","mcpaint.studio.item_display","mcpaint.studio.item_display.new","mcpaint.studio.item_display.bg"],item_display:"fixed"}
execute if data storage mcpaint:calc spawn_studio{facing:"west"} run summon item_display ~ ~ ~ {Rotation:[90f,0f],Tags:["mcpaint.studio","mcpaint.studio.item_display","mcpaint.studio.item_display.new","mcpaint.studio.item_display.bg"],item_display:"fixed"}
data modify entity @e[type=item_display,tag=mcpaint.studio.item_display.new,tag=mcpaint.studio.item_display.bg,distance=..0.1,limit=1] item set from storage mcpaint:calc studio_data.bg_model

execute rotated as @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] run function mcpaint:studio/summon_interactions

tag @e[type=marker,tag=mcpaint.studio.marker.new,distance=..0.1,limit=1] remove mcpaint.studio.marker.new
tag @e[type=item_display,tag=mcpaint.studio.item_display.new,distance=..0.1,limit=1] remove mcpaint.studio.item_display.new
tag @e[type=text_display,tag=mcpaint.studio.text_display.new,distance=..0.1,limit=1] remove mcpaint.studio.text_display.new