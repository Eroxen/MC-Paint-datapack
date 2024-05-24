data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:-0.4375f}
function mcpaint:canvas/api/get_transformation_painting
data modify entity @e[type=text_display,tag=mcpaint.studio.text_display.canvas,distance=..0.1,limit=1] transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation

function mcpaint:canvas/api/get_info
execute store result score #studio.old_width mcpaint.calc run data get storage mcpaint:calc internal.studio.data.width 1
execute store result score #studio.old_height mcpaint.calc run data get storage mcpaint:calc internal.studio.data.height 1
execute if score #canvas.width_blocks mcpaint.calc = #studio.old_width mcpaint.calc if score #canvas.height_blocks mcpaint.calc = #studio.old_height mcpaint.calc run return 0

### different size than before ###
function mcpaint:studio/internal/ui/killall
scoreboard players operation #studio.width mcpaint.calc = #canvas.width_blocks mcpaint.calc
scoreboard players operation #studio.height mcpaint.calc = #canvas.height_blocks mcpaint.calc
execute store result storage mcpaint:calc internal.studio.data.width int 1 run scoreboard players get #studio.width mcpaint.calc
execute store result storage mcpaint:calc internal.studio.data.height int 1 run scoreboard players get #studio.height mcpaint.calc
data modify storage mcpaint:calc internal.studio.data.width set from storage mcpaint:calc internal.studio.data.width
data modify storage mcpaint:calc internal.studio.data.height set from storage mcpaint:calc internal.studio.data.height

data modify storage mcpaint:calc api.assets.get_model set value {z_origin:0.5f,width:1,height:1,variant:"canvas"}
data modify storage mcpaint:calc api.assets.get_model.width set from storage mcpaint:calc internal.studio.data.width
data modify storage mcpaint:calc api.assets.get_model.height set from storage mcpaint:calc internal.studio.data.height
function mcpaint:assets/api/get_painting_background
data modify entity @e[type=item_display,tag=mcpaint.studio.item_display.background,distance=..0.1,limit=1] {} merge from storage mcpaint:calc api.assets.model
function mcpaint:assets/api/get_studio_border
data modify entity @e[type=item_display,tag=mcpaint.studio.item_display.border,distance=..0.1,limit=1] {} merge from storage mcpaint:calc api.assets.model

function mcpaint:studio/internal/ui/open_default