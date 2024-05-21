scoreboard players set #studio.session.response mcpaint.calc 1

data modify storage mcpaint:calc internal.studio.rotation set from entity @s Rotation
data modify storage mcpaint:calc macro.plane_x_rotation set from storage mcpaint:calc internal.studio.rotation[0]
data modify storage mcpaint:calc macro.origin set from entity @s Pos
scoreboard players set #studio.ui_element.max_layer mcpaint.calc 0
execute at @s run scoreboard players operation #studio.ui_element.max_layer mcpaint.calc > @e[type=text_display,tag=mcpaint.studio.ui_element.parent,distance=..0.1] mcpaint.ui.layer
scoreboard players set #studio.session.plane_offset mcpaint.calc 625
scoreboard players operation #studio.session.plane_offset mcpaint.calc *= #studio.ui_element.max_layer mcpaint.calc
scoreboard players remove #studio.session.plane_offset mcpaint.calc 4375
execute store result storage mcpaint:calc macro.offset float 0.0001 run scoreboard players get #studio.session.plane_offset mcpaint.calc
function eroxified2:math.ray/api/plane/rotated_plane_uv with storage mcpaint:calc macro

execute if score math.ray.hit eroxified2.api matches 1 if score math.ray.origin_occupancy eroxified2.api matches 0 at @s run function mcpaint:studio/internal/session/tick_studio_phase_2