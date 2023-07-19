data remove storage mcpaint:calc painter_command
data modify storage mcpaint:calc painter_tick set value {right_click:0b,left_click:0b}
execute if data storage mcpaint:calc force_painter_tick run data modify storage mcpaint:calc painter_tick merge from storage mcpaint:calc force_painter_tick
execute if data storage mcpaint:calc force_painter_tick run data remove storage mcpaint:calc force_painter_tick

### get studio ###
scoreboard players operation #reference mcpaint.attention_link = @s mcpaint.attention_link
data modify storage mcpaint:calc painter_tick.studio set from entity @e[type=marker,tag=mcpaint.studio.marker.has_painter,distance=..16,predicate=mcpaint:attention_link,limit=1] {}

execute unless data storage mcpaint:calc painter_tick.studio run function mcpaint:painting_mode/api/leave
execute unless data storage mcpaint:calc painter_tick.studio run return 0


### get intersection point ###
data modify storage mcpaint:calc math.intersect_plane set value {plane:{normal:{axis:"x",sign:1},offset:-0.4375f}}
execute if data storage mcpaint:calc painter_tick.studio.data.popups[0] run data modify storage mcpaint:calc math.intersect_plane.plane.offset set value 0f
data modify storage mcpaint:calc math.intersect_plane.plane.origin set from storage mcpaint:calc painter_tick.studio.Pos
execute if data storage mcpaint:calc painter_tick.studio.data{facing:"north"} run data modify storage mcpaint:calc math.intersect_plane.plane.normal set value {axis:"z",sign:-1}
execute if data storage mcpaint:calc painter_tick.studio.data{facing:"south"} run data modify storage mcpaint:calc math.intersect_plane.plane.normal set value {axis:"z",sign:1}
execute if data storage mcpaint:calc painter_tick.studio.data{facing:"west"} run data modify storage mcpaint:calc math.intersect_plane.plane.normal set value {axis:"x",sign:-1}
execute at @s anchored eyes positioned ^ ^ ^ run function mcpaint:math/api/intersect_plane
execute if score distance mcpaint.calc matches ..0 run return 0
scoreboard players add screenspace_x mcpaint.calc 500
scoreboard players add screenspace_y mcpaint.calc 500


### pro brush shortcut ###
scoreboard players set #pro_brush_shortcut mcpaint.calc 0
execute if predicate mcpaint:holding_pro_brush_offhand unless predicate mcpaint:holding_pro_brush run function mcpaint:painting_mode/pro_brush_f
execute unless data entity @s SelectedItem positioned ^ ^ ^ if entity @e[type=item,predicate=mcpaint:pro_brush_item,distance=..1,limit=1] if data entity @e[type=item,predicate=mcpaint:pro_brush_item,distance=..1,limit=1] Thrower if data entity @e[type=item,predicate=mcpaint:pro_brush_item,distance=..1,limit=1] {Age:0s} run function mcpaint:painting_mode/pro_brush_q


### get intersected element ###
execute unless data storage mcpaint:calc painter_tick.studio.data.popups[0] run function mcpaint:painting_mode/internal/get_element_no_popup
execute if data storage mcpaint:calc painter_tick.studio.data.popups[0] run function mcpaint:painting_mode/internal/get_element_popup
execute unless data storage mcpaint:calc painter_tick.intersect run function mcpaint:painting_mode/internal/hover/none
execute unless data storage mcpaint:calc painter_tick.intersect run return 0


### pro brush ###
execute if predicate mcpaint:holding_pro_brush if entity @s[tag=mcpaint.player.using_pro_brush] run data modify storage mcpaint:calc painter_tick.right_click set value 1b


### interactions ###
execute if data storage mcpaint:calc painter_tick.intersect{clickable:1b} unless predicate mcpaint:holding_pro_brush run function mcpaint:painting_mode/interactions
execute if data storage mcpaint:calc painter_tick.intersect{clickable:1b} if predicate mcpaint:holding_pro_brush unless data storage mcpaint:calc painter_tick.intersect{element:"canvas"} unless data storage mcpaint:calc painter_tick.intersect{element:"colour_picker",child:{slider:1b}} run function mcpaint:painting_mode/interactions

### branch ###
execute if score #pro_brush_shortcut mcpaint.calc matches 1 run return 0
execute unless data storage mcpaint:calc painter_tick.studio.data.popups[0] run function mcpaint:painting_mode/internal/tick_no_popup
execute if data storage mcpaint:calc painter_tick.studio.data.popups[0] run function mcpaint:painting_mode/internal/tick_popup


### send command ###
execute if data storage mcpaint:calc painter_command as @e[type=marker,tag=mcpaint.studio.marker.has_painter,distance=..16,predicate=mcpaint:attention_link,limit=1] at @s run function mcpaint:studio/follow_command