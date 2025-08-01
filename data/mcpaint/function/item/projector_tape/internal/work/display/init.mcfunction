tag @s add mcpaint.entity
tag @s add mcpaint.projector_tape_work_display
tag @s add mcpaint.projector_tape_work_display.new
data merge entity @s {item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"mcpaint:projector_tape/origin"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item_display:"fixed",brightness:{block:15,sky:15},teleport_duration:1}

function eroxified2:entity/api/get_uuid
data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.uuid set from storage eroxified2:api entity.get_uuid

summon item_display ~ ~ ~ {Tags:["mcpaint.entity","mcpaint.projector_tape_work_display.border","mcpaint.projector_tape_work_display.border.side","mcpaint.projector_tape_work_display.border.side.left","mcpaint.projector_tape_work_display.border.new"],item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"mcpaint:projector_tape/border","minecraft:custom_model_data":{strings:["side"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.53125f,0f,0f],scale:[1f,1.125f,1f]},item_display:"fixed",brightness:{block:15,sky:15}}
summon item_display ~ ~ ~ {Tags:["mcpaint.entity","mcpaint.projector_tape_work_display.border","mcpaint.projector_tape_work_display.border.side","mcpaint.projector_tape_work_display.border.side.right","mcpaint.projector_tape_work_display.border.new"],item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"mcpaint:projector_tape/border","minecraft:custom_model_data":{strings:["side"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.53125f,0f,0f],scale:[1f,1.125f,1f]},item_display:"fixed",brightness:{block:15,sky:15}}
summon item_display ~ ~ ~ {Tags:["mcpaint.entity","mcpaint.projector_tape_work_display.border","mcpaint.projector_tape_work_display.border.horizontal","mcpaint.projector_tape_work_display.border.horizontal.down","mcpaint.projector_tape_work_display.border.new"],item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"mcpaint:projector_tape/border","minecraft:custom_model_data":{strings:["up"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.53125f,0f],scale:[1f,1f,1f]},item_display:"fixed",brightness:{block:15,sky:15}}
summon item_display ~ ~ ~ {Tags:["mcpaint.entity","mcpaint.projector_tape_work_display.border","mcpaint.projector_tape_work_display.border.horizontal","mcpaint.projector_tape_work_display.border.horizontal.up","mcpaint.projector_tape_work_display.border.new"],item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"mcpaint:projector_tape/border","minecraft:custom_model_data":{strings:["up"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.53125f,0f],scale:[1f,1f,1f]},item_display:"fixed",brightness:{block:15,sky:15}}

execute as @e[type=item_display,tag=mcpaint.projector_tape_work_display.border.new,distance=..1] run ride @s mount @n[type=item_display,tag=mcpaint.projector_tape_work_display.new,distance=..1]

tag @s remove mcpaint.projector_tape_work_display.new
execute on passengers run tag @s remove mcpaint.projector_tape_work_display.border.new

function mcpaint:item/projector_tape/internal/work/display/internal/set_size
function mcpaint:item/projector_tape/internal/work/display/internal/set_rotation