playsound minecraft:entity.painting.place block @a[distance=..16] ~ ~ ~ 1 1

execute if data storage mcpaint:calc custom_painting{horizontal_direction:"north",vertical_direction:"level"} run summon marker ~ ~ ~ {Tags:["mcpaint.custom_painting","mcpaint.custom_painting.marker","mcpaint.custom_painting.marker.new"],data:{},Rotation:[-180f,0f]}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"east",vertical_direction:"level"} run summon marker ~ ~ ~ {Tags:["mcpaint.custom_painting","mcpaint.custom_painting.marker","mcpaint.custom_painting.marker.new"],data:{},Rotation:[-90f,0f]}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"south",vertical_direction:"level"} run summon marker ~ ~ ~ {Tags:["mcpaint.custom_painting","mcpaint.custom_painting.marker","mcpaint.custom_painting.marker.new"],data:{},Rotation:[0f,0f]}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"west",vertical_direction:"level"} run summon marker ~ ~ ~ {Tags:["mcpaint.custom_painting","mcpaint.custom_painting.marker","mcpaint.custom_painting.marker.new"],data:{},Rotation:[90f,0f]}
execute if data storage mcpaint:calc custom_painting{vertical_direction:"up"} run summon marker ~ ~ ~ {Tags:["mcpaint.custom_painting","mcpaint.custom_painting.marker","mcpaint.custom_painting.marker.new"],data:{},Rotation:[0f,-90f]}
execute if data storage mcpaint:calc custom_painting{vertical_direction:"down"} run summon marker ~ ~ ~ {Tags:["mcpaint.custom_painting","mcpaint.custom_painting.marker","mcpaint.custom_painting.marker.new"],data:{},Rotation:[0f,90f]}

execute if data storage mcpaint:calc custom_painting{horizontal_direction:"north",vertical_direction:"level"} run summon item_display ~ ~ ~ {Rotation:[180f,0f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"east",vertical_direction:"level"} run summon item_display ~ ~ ~ {Rotation:[270f,0f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"south",vertical_direction:"level"} run summon item_display ~ ~ ~ {Rotation:[0f,0f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"west",vertical_direction:"level"} run summon item_display ~ ~ ~ {Rotation:[90f,0f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"north",vertical_direction:"up"} run summon item_display ~ ~ ~ {Rotation:[180f,-90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"east",vertical_direction:"up"} run summon item_display ~ ~ ~ {Rotation:[270f,-90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"south",vertical_direction:"up"} run summon item_display ~ ~ ~ {Rotation:[0f,-90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"west",vertical_direction:"up"} run summon item_display ~ ~ ~ {Rotation:[90f,-90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"north",vertical_direction:"down"} run summon item_display ~ ~ ~ {Rotation:[180f,90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"east",vertical_direction:"down"} run summon item_display ~ ~ ~ {Rotation:[270f,90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"south",vertical_direction:"down"} run summon item_display ~ ~ ~ {Rotation:[0f,90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"west",vertical_direction:"down"} run summon item_display ~ ~ ~ {Rotation:[90f,90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed"}
data modify storage mcpaint:calc custom_painting.item_display merge value {transformation:{translation:[0f,0f,0.46875f]}}

execute if data storage mcpaint:calc custom_painting{horizontal_direction:"north",vertical_direction:"level"} run summon text_display ~ ~ ~ {Rotation:[180f,0f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"east",vertical_direction:"level"} run summon text_display ~ ~ ~ {Rotation:[270f,0f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"south",vertical_direction:"level"} run summon text_display ~ ~ ~ {Rotation:[0f,0f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"west",vertical_direction:"level"} run summon text_display ~ ~ ~ {Rotation:[90f,0f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"north",vertical_direction:"up"} run summon text_display ~ ~ ~ {Rotation:[180f,-90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"east",vertical_direction:"up"} run summon text_display ~ ~ ~ {Rotation:[270f,-90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"south",vertical_direction:"up"} run summon text_display ~ ~ ~ {Rotation:[0f,-90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"west",vertical_direction:"up"} run summon text_display ~ ~ ~ {Rotation:[90f,-90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"north",vertical_direction:"down"} run summon text_display ~ ~ ~ {Rotation:[180f,90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"east",vertical_direction:"down"} run summon text_display ~ ~ ~ {Rotation:[270f,90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"south",vertical_direction:"down"} run summon text_display ~ ~ ~ {Rotation:[0f,90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}
execute if data storage mcpaint:calc custom_painting{horizontal_direction:"west",vertical_direction:"down"} run summon text_display ~ ~ ~ {Rotation:[90f,90f],Tags:["mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.new"],background:0,line_width:10000}

ride @e[type=marker,tag=mcpaint.custom_painting.marker.new,distance=..0.1,limit=1] mount @e[type=item_display,tag=mcpaint.custom_painting.item_display.new,distance=..0.1,limit=1]
ride @e[type=text_display,tag=mcpaint.custom_painting.text_display.new,distance=..0.1,limit=1] mount @e[type=item_display,tag=mcpaint.custom_painting.item_display.new,distance=..0.1,limit=1]

execute positioned ~ ~-0.25 ~ unless entity @e[type=interaction,tag=mcpaint.custom_painting.interaction,distance=..0.03,limit=1] run summon interaction ~ ~ ~ {Tags:["mcpaint.custom_painting","mcpaint.custom_painting.interaction"],width:0.5,height:0.5,response:1b}



########


function mcpaint:custom_painting/fix_settings

data modify storage mcpaint:calc filepath set from storage mcpaint:calc custom_painting.filepath
function mcpaint:database/open_filepath
data modify storage mcpaint:calc canvas set from storage mcpaint:database search.work.canvas
function mcpaint:canvas/get_info



### marker ###
data modify storage mcpaint:calc custom_painting.marker.data.filepath set from storage mcpaint:calc filepath
data modify storage mcpaint:calc custom_painting.marker.data.settings set from storage mcpaint:calc custom_painting.settings
data modify storage mcpaint:calc custom_painting.marker.data.horizontal_direction set from storage mcpaint:calc custom_painting.horizontal_direction
data modify storage mcpaint:calc custom_painting.marker.data.vertical_direction set from storage mcpaint:calc custom_painting.vertical_direction


### text display ###
data modify storage mcpaint:calc custom_painting.text_display.text set from storage mcpaint:calc canvas.resolved_text

data modify storage mcpaint:calc EntityData set value {width:1,height:1}
scoreboard players set horizontal mcpaint.calc 0
execute if data storage mcpaint:calc custom_painting{vertical_direction:"down"} run scoreboard players set horizontal mcpaint.calc 1
execute if data storage mcpaint:calc custom_painting{vertical_direction:"up"} run scoreboard players set horizontal mcpaint.calc 1
execute if score horizontal mcpaint.calc matches 0 store result storage mcpaint:calc EntityData.width int 1 run scoreboard players get canvas_width_blocks mcpaint.calc
execute if score horizontal mcpaint.calc matches 0 store result storage mcpaint:calc EntityData.height int 1 run scoreboard players get canvas_height_blocks mcpaint.calc
execute if score horizontal mcpaint.calc matches 1 if score canvas_width_blocks mcpaint.calc > canvas_height_blocks mcpaint.calc store result storage mcpaint:calc EntityData.width int 1 run scoreboard players get canvas_width_blocks mcpaint.calc
execute if score horizontal mcpaint.calc matches 1 unless score canvas_width_blocks mcpaint.calc > canvas_height_blocks mcpaint.calc store result storage mcpaint:calc EntityData.width int 1 run scoreboard players get canvas_height_blocks mcpaint.calc
data modify storage mcpaint:calc custom_painting.text_display merge from storage mcpaint:calc EntityData


### item display ###
data modify storage mcpaint:calc custom_painting.item_display merge from storage mcpaint:calc EntityData





########
function mcpaint:custom_painting/apply_settings

data modify entity @e[type=marker,tag=mcpaint.custom_painting.marker.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc custom_painting.marker
data modify entity @e[type=item_display,tag=mcpaint.custom_painting.item_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc custom_painting.item_display
data modify entity @e[type=text_display,tag=mcpaint.custom_painting.text_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc custom_painting.text_display

tag @e[type=marker,tag=mcpaint.custom_painting.marker.new,distance=..0.1,limit=1] remove mcpaint.custom_painting.marker.new
tag @e[type=item_display,tag=mcpaint.custom_painting.item_display.new,distance=..0.1,limit=1] remove mcpaint.custom_painting.item_display.new
tag @e[type=text_display,tag=mcpaint.custom_painting.text_display.new,distance=..0.1,limit=1] remove mcpaint.custom_painting.text_display.new


