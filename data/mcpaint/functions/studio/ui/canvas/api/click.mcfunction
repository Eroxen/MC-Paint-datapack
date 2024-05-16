#####################################################################
# studio/ui/canvas/api/click.mcfunction
# written by Eroxen
#
# Clicks the canvas. Called on the marker.
#####################################################################

data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data
execute as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] run data modify storage mcpaint:calc api.canvas.canvas set from entity @s data.canvas
function mcpaint:canvas/api/get_info

scoreboard players operation #studio.ui_element.u.px mcpaint.calc = #studio.ui_element.u mcpaint.calc
scoreboard players operation #studio.ui_element.v.px mcpaint.calc = #studio.ui_element.size.v mcpaint.calc
scoreboard players operation #studio.ui_element.v.px mcpaint.calc -= #studio.ui_element.v mcpaint.calc
scoreboard players operation #studio.ui_element.u.px mcpaint.calc *= #canvas.width_px mcpaint.calc
scoreboard players operation #studio.ui_element.v.px mcpaint.calc *= #canvas.height_px mcpaint.calc
scoreboard players operation #studio.ui_element.u.px mcpaint.calc /= #canvas.width_blocks mcpaint.calc
scoreboard players operation #studio.ui_element.v.px mcpaint.calc /= #canvas.height_blocks mcpaint.calc
scoreboard players operation #studio.ui_element.u.px mcpaint.calc /= #const.1000 mcpaint.calc
scoreboard players operation #studio.ui_element.v.px mcpaint.calc /= #const.1000 mcpaint.calc

execute store result score #studio.ui_element.last_u mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.last_click[0] 1
execute store result score #studio.ui_element.last_v mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.last_click[1] 1
execute if score #studio.ui_element.last_u mcpaint.calc = #studio.ui_element.u.px mcpaint.calc if score #studio.ui_element.last_v mcpaint.calc = #studio.ui_element.v.px mcpaint.calc run return 0
execute store result storage mcpaint:calc internal.studio.ui.data.last_click[0] int 1 run scoreboard players get #studio.ui_element.u.px mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.data.last_click[1] int 1 run scoreboard players get #studio.ui_element.v.px mcpaint.calc

#tellraw @a [{"score":{"name": "#studio.ui_element.u.px", "objective": "mcpaint.calc"}},{"text":" "},{"score":{"name": "#studio.ui_element.v.px","objective": "mcpaint.calc"}}]
scoreboard players set #studio.session.canvas_changed mcpaint.calc 0
function mcpaint:studio/ui/canvas/internal/tool/set_pixel
execute if score #studio.session.canvas_changed mcpaint.calc matches 1 as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] run function mcpaint:studio/api/update_canvas

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data