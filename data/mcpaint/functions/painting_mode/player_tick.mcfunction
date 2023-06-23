data modify storage mcpaint:calc painter_tick set value {leave:0b,right_click:0b,left_click:0b,intersect:0b,intersect_canvas:0b,below_canvas:0b,f:0b}
data modify storage mcpaint:calc painter_tick.player_UUID set from entity @s UUID
data remove storage mcpaint:calc painter_command


execute if predicate mcpaint:holding_pro_brush_offhand unless predicate mcpaint:holding_pro_brush run function mcpaint:painting_mode/pro_brush_f
execute unless data entity @s SelectedItem positioned ^ ^ ^ if entity @e[type=item,predicate=mcpaint:pro_brush_item,distance=..1,limit=1] if data entity @e[type=item,predicate=mcpaint:pro_brush_item,distance=..1,limit=1] Thrower if data entity @e[type=item,predicate=mcpaint:pro_brush_item,distance=..1,limit=1] {Age:0s} run function mcpaint:painting_mode/pro_brush_q

execute unless predicate mcpaint:holding_pro_brush run function mcpaint:painting_mode/interactions

execute if predicate mcpaint:holding_pro_brush if entity @s[tag=mcpaint.player.using_pro_brush] unless score @s mcpaint.pro_brush_cooldown matches 1.. run data modify storage mcpaint:calc painter_tick.right_click set value 1b
execute if predicate mcpaint:holding_pro_brush if entity @s[tag=mcpaint.player.using_pro_brush] run scoreboard players set @s mcpaint.pro_brush_cooldown 2

execute if data storage mcpaint:calc force_painter_tick run data modify storage mcpaint:calc painter_tick merge from storage mcpaint:calc force_painter_tick
execute if data storage mcpaint:calc force_painter_tick run data remove storage mcpaint:calc force_painter_tick


data modify storage mcpaint:calc painter_ping_studio set value {response:0b,command:0b}
data modify storage mcpaint:calc painter_ping_studio.player_UUID set from entity @s UUID
execute as @e[type=marker,tag=mcpaint.studio.marker.has_painter,distance=..16] at @s run function mcpaint:studio/get_pinged
execute if data storage mcpaint:calc painter_ping_studio{response:0b} run data modify storage mcpaint:calc painter_tick.leave set value 1b
execute if data storage mcpaint:calc painter_ping_studio{response:1b} run data modify storage mcpaint:calc painter_tick.selected_tool set from storage mcpaint:calc painter_ping_studio.responder.data.ui.tools.selected_tool_data
execute if data storage mcpaint:calc painter_ping_studio{response:1b} run data modify storage mcpaint:calc painter_tick.selected_tool.subtool set from storage mcpaint:calc painter_ping_studio.responder.data.ui.tools.selected_subtool_data


execute positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["mcpaint.coordinate_getter"]}
execute positioned ^ ^ ^ run data modify storage mcpaint:calc painter_tick.look.l0 set from entity @e[type=marker,tag=mcpaint.coordinate_getter,distance=..0.1,limit=1] Pos
execute positioned ^ ^ ^ run tp @e[type=marker,tag=mcpaint.coordinate_getter,distance=..0.1,limit=1] ^ ^ ^1
execute positioned ^ ^ ^1 run data modify storage mcpaint:calc painter_tick.look.l1 set from entity @e[type=marker,tag=mcpaint.coordinate_getter,distance=..0.1,limit=1] Pos
execute positioned ^ ^ ^1 run kill @e[type=marker,tag=mcpaint.coordinate_getter,distance=..2]
scoreboard players set precision mcpaint.calc 1000
scoreboard players set -1 mcpaint.calc -1
execute store result score l_0_x mcpaint.calc run data get storage mcpaint:calc painter_tick.look.l0[0] 1000
execute store result score l_0_y mcpaint.calc run data get storage mcpaint:calc painter_tick.look.l0[1] 1000
execute store result score l_0_z mcpaint.calc run data get storage mcpaint:calc painter_tick.look.l0[2] 1000
execute store result score l_1_x mcpaint.calc run data get storage mcpaint:calc painter_tick.look.l1[0] 1000
execute store result score l_1_y mcpaint.calc run data get storage mcpaint:calc painter_tick.look.l1[1] 1000
execute store result score l_1_z mcpaint.calc run data get storage mcpaint:calc painter_tick.look.l1[2] 1000
scoreboard players operation l_x mcpaint.calc = l_1_x mcpaint.calc
scoreboard players operation l_y mcpaint.calc = l_1_y mcpaint.calc
scoreboard players operation l_z mcpaint.calc = l_1_z mcpaint.calc
scoreboard players operation l_x mcpaint.calc -= l_0_x mcpaint.calc
scoreboard players operation l_y mcpaint.calc -= l_0_y mcpaint.calc
scoreboard players operation l_z mcpaint.calc -= l_0_z mcpaint.calc
data modify storage mcpaint:calc painter_tick.look.face_axis set value "x"
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"north"} run data modify storage mcpaint:calc painter_tick.look.face_axis set value "z"
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"south"} run data modify storage mcpaint:calc painter_tick.look.face_axis set value "z"
execute if data storage mcpaint:calc painter_tick.look{face_axis:"x"} store result score distance mcpaint.calc run data get storage mcpaint:calc painter_ping_studio.responder.Pos[0] 1000
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"east"} unless data storage mcpaint:calc painter_ping_studio.responder.data.popups[0] run scoreboard players remove distance mcpaint.calc 438
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"west"} unless data storage mcpaint:calc painter_ping_studio.responder.data.popups[0] run scoreboard players add distance mcpaint.calc 438
execute if data storage mcpaint:calc painter_tick.look{face_axis:"x"} run scoreboard players operation distance mcpaint.calc -= l_0_x mcpaint.calc
execute if data storage mcpaint:calc painter_tick.look{face_axis:"x"} run scoreboard players operation distance mcpaint.calc *= precision mcpaint.calc
execute if data storage mcpaint:calc painter_tick.look{face_axis:"x"} run scoreboard players operation distance mcpaint.calc /= l_x mcpaint.calc
execute if data storage mcpaint:calc painter_tick.look{face_axis:"z"} store result score distance mcpaint.calc run data get storage mcpaint:calc painter_ping_studio.responder.Pos[2] 1000
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"north"} unless data storage mcpaint:calc painter_ping_studio.responder.data.popups[0] run scoreboard players add distance mcpaint.calc 438
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"south"} unless data storage mcpaint:calc painter_ping_studio.responder.data.popups[0] run scoreboard players remove distance mcpaint.calc 438
execute if data storage mcpaint:calc painter_tick.look{face_axis:"z"} run scoreboard players operation distance mcpaint.calc -= l_0_z mcpaint.calc
execute if data storage mcpaint:calc painter_tick.look{face_axis:"z"} run scoreboard players operation distance mcpaint.calc *= precision mcpaint.calc
execute if data storage mcpaint:calc painter_tick.look{face_axis:"z"} run scoreboard players operation distance mcpaint.calc /= l_z mcpaint.calc
scoreboard players operation intersect_x mcpaint.calc = l_x mcpaint.calc
scoreboard players operation intersect_x mcpaint.calc *= distance mcpaint.calc
scoreboard players operation intersect_x mcpaint.calc /= precision mcpaint.calc
scoreboard players operation intersect_x mcpaint.calc += l_0_x mcpaint.calc
scoreboard players operation intersect_y mcpaint.calc = l_y mcpaint.calc
scoreboard players operation intersect_y mcpaint.calc *= distance mcpaint.calc
scoreboard players operation intersect_y mcpaint.calc /= precision mcpaint.calc
scoreboard players operation intersect_y mcpaint.calc += l_0_y mcpaint.calc
scoreboard players operation intersect_z mcpaint.calc = l_z mcpaint.calc
scoreboard players operation intersect_z mcpaint.calc *= distance mcpaint.calc
scoreboard players operation intersect_z mcpaint.calc /= precision mcpaint.calc
scoreboard players operation intersect_z mcpaint.calc += l_0_z mcpaint.calc
execute store result score screen_o_x mcpaint.calc run data get storage mcpaint:calc painter_ping_studio.responder.Pos[0] 1000
execute store result score screen_o_y mcpaint.calc run data get storage mcpaint:calc painter_ping_studio.responder.Pos[1] 1000
execute store result score screen_o_z mcpaint.calc run data get storage mcpaint:calc painter_ping_studio.responder.Pos[2] 1000
scoreboard players remove screen_o_y mcpaint.calc 500
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"north"} run scoreboard players add screen_o_x mcpaint.calc 500
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"south"} run scoreboard players remove screen_o_x mcpaint.calc 500
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"east"} run scoreboard players add screen_o_z mcpaint.calc 500
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"west"} run scoreboard players remove screen_o_z mcpaint.calc 500
scoreboard players operation screenspace_y mcpaint.calc = intersect_y mcpaint.calc
scoreboard players operation screenspace_y mcpaint.calc -= screen_o_y mcpaint.calc
execute if data storage mcpaint:calc painter_tick.look{face_axis:"x"} run scoreboard players operation screenspace_x mcpaint.calc = intersect_z mcpaint.calc
execute if data storage mcpaint:calc painter_tick.look{face_axis:"x"} run scoreboard players operation screenspace_x mcpaint.calc -= screen_o_z mcpaint.calc
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"east"} run scoreboard players operation screenspace_x mcpaint.calc *= -1 mcpaint.calc
execute if data storage mcpaint:calc painter_tick.look{face_axis:"z"} run scoreboard players operation screenspace_x mcpaint.calc = intersect_x mcpaint.calc
execute if data storage mcpaint:calc painter_tick.look{face_axis:"z"} run scoreboard players operation screenspace_x mcpaint.calc -= screen_o_x mcpaint.calc
execute if data storage mcpaint:calc painter_ping_studio.responder.data{facing:"north"} run scoreboard players operation screenspace_x mcpaint.calc *= -1 mcpaint.calc
execute store result score canvas_width mcpaint.calc run data get storage mcpaint:calc painter_ping_studio.responder.data.width 1000
execute store result score canvas_height mcpaint.calc run data get storage mcpaint:calc painter_ping_studio.responder.data.height 1000

execute if score distance mcpaint.calc matches 0..16000 run data modify storage mcpaint:calc painter_tick.intersect set value 1b
execute unless data storage mcpaint:calc painter_ping_studio.responder.data.popups[0] run function mcpaint:painting_mode/player_tick_no_popup
execute if data storage mcpaint:calc painter_ping_studio.responder.data.popups[0] run function mcpaint:painting_mode/player_tick_popup


execute if data storage mcpaint:calc painter_command run data modify storage mcpaint:calc painter_ping_studio merge value {response:0b,command:1b}
execute if data storage mcpaint:calc painter_command as @e[type=marker,tag=mcpaint.studio.marker.has_painter,distance=..16] at @s run function mcpaint:studio/get_pinged
execute if data storage mcpaint:calc painter_command{used_dye:1b} run advancement grant @s only mcpaint:guide/use_dye


execute if data storage mcpaint:calc painter_tick{leave:1b} run function mcpaint:painting_mode/leave