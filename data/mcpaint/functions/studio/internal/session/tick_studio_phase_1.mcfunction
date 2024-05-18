scoreboard players set #studio.session.response mcpaint.calc 1

data modify storage mcpaint:calc macro.plane_x_rotation set from entity @s Rotation[0]
data modify storage mcpaint:calc macro.origin set from entity @s Pos
scoreboard players set #studio.ui_element.max_layer mcpaint.calc 0
execute at @s run scoreboard players operation #studio.ui_element.max_layer mcpaint.calc > @e[type=text_display,tag=mcpaint.studio.ui_element.parent,distance=..0.1] mcpaint.ui.layer
scoreboard players set #studio.session.plane_offset mcpaint.calc 625
scoreboard players operation #studio.session.plane_offset mcpaint.calc *= #studio.ui_element.max_layer mcpaint.calc
scoreboard players remove #studio.session.plane_offset mcpaint.calc 4375
execute store result storage mcpaint:calc macro.offset float 0.0001 run scoreboard players get #studio.session.plane_offset mcpaint.calc
function eroxified2:math.ray/api/plane/rotated_plane_uv with storage mcpaint:calc macro

scoreboard players operation #studio.u mcpaint.calc = math.ray.hit.u eroxified2.api
scoreboard players operation #studio.v mcpaint.calc = math.ray.hit.v eroxified2.api
scoreboard players add #studio.u mcpaint.calc 500
scoreboard players add #studio.v mcpaint.calc 500


### get hovered element ###
scoreboard players set #studio.ui_element.focused_child mcpaint.calc -1
scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 0
scoreboard players set #studio.ui_element.focused_child.can_hover mcpaint.calc 0
scoreboard players set #studio.ui_element.focused_child.make_sound mcpaint.calc 1
scoreboard players set #studio.ui_element.focused_child.has_description mcpaint.calc 0
scoreboard players set #studio.ui_element.focused_child.can_spam_click mcpaint.calc 0
scoreboard players set #studio.ui_element.focused_child.can_spam_click_when_sneaking mcpaint.calc 0
execute at @s as @e[type=text_display,tag=mcpaint.studio.ui_element.parent,distance=..0.1,predicate=mcpaint:ui_overlap,limit=1] run function mcpaint:studio/internal/ui/hover_tick

scoreboard players set #studio.session.click mcpaint.calc 0
execute if score #studio.ui_element.focused_child.can_click mcpaint.calc matches 1 if score #studio.session.using_brush mcpaint.calc matches 3 run scoreboard players set #studio.session.click mcpaint.calc 1
execute if score #studio.ui_element.focused_child.can_click mcpaint.calc matches 1 if score #studio.ui_element.focused_child.can_spam_click_when_sneaking mcpaint.calc matches 1 if score #studio.session.is_sneaking mcpaint.calc matches 1 run scoreboard players set #studio.ui_element.focused_child.can_spam_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child.can_spam_click mcpaint.calc matches 1 if score #studio.session.using_brush mcpaint.calc matches 2 run scoreboard players set #studio.session.click mcpaint.calc 1
execute if entity @s[tag=mcpaint.studio.ignore_current_click] if score #studio.session.click mcpaint.calc matches 0 run tag @s remove mcpaint.studio.ignore_current_click
execute if entity @s[tag=mcpaint.studio.ignore_current_click] run scoreboard players set #studio.session.click mcpaint.calc 0

execute if score #studio.session.click mcpaint.calc matches 1 at @s as @e[type=text_display,tag=mcpaint.studio.ui_element.parent,distance=..0.1,predicate=mcpaint:ui_overlap,limit=1] on passengers if entity @s[type=marker] run function mcpaint:studio/internal/ui/click_on_marker with entity @s data.definition