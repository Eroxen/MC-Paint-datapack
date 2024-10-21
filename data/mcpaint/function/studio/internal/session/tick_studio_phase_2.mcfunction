scoreboard players operation #studio.u mcpaint.calc = math.ray.hit.u eroxified2.api
scoreboard players operation #studio.v mcpaint.calc = math.ray.hit.v eroxified2.api
scoreboard players add #studio.u mcpaint.calc 500
scoreboard players add #studio.v mcpaint.calc 500

# tellraw @a ["",{"score": {"name": "#studio.u", "objective": "mcpaint.calc"}},{"text":", "},{"score": {"name": "#studio.v", "objective": "mcpaint.calc"}}]


### get hovered element ###
scoreboard players set #studio.ui_element.focused_child mcpaint.calc -1
scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 0
scoreboard players set #studio.ui_element.focused_child.can_hover mcpaint.calc 0
scoreboard players set #studio.ui_element.focused_child.make_sound mcpaint.calc 1
scoreboard players set #studio.ui_element.focused_child.has_description mcpaint.calc 0
scoreboard players set #studio.ui_element.focused_child.can_spam_click mcpaint.calc 0
scoreboard players set #studio.ui_element.focused_child.can_spam_click_when_sneaking mcpaint.calc 0
execute as @e[type=text_display,tag=mcpaint.studio.ui_element.parent,distance=..0.1,predicate=mcpaint:studio/ui_overlap,limit=1] run function mcpaint:studio/internal/ui/hover_tick

scoreboard players set #studio.session.click mcpaint.calc 0
execute if score #studio.ui_element.focused_child.can_click mcpaint.calc matches 1 if score #studio.session.using_brush mcpaint.calc matches 3 run scoreboard players set #studio.session.click mcpaint.calc 1
execute if score #studio.ui_element.focused_child.can_click mcpaint.calc matches 1 if score #studio.ui_element.focused_child.can_spam_click_when_sneaking mcpaint.calc matches 1 if score #studio.session.is_sneaking mcpaint.calc matches 1 run scoreboard players set #studio.ui_element.focused_child.can_spam_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child.can_spam_click mcpaint.calc matches 1 if score #studio.session.using_brush mcpaint.calc matches 2 run scoreboard players set #studio.session.click mcpaint.calc 1
execute if entity @s[tag=mcpaint.studio.ignore_current_click] if score #studio.session.click mcpaint.calc matches 0 run tag @s remove mcpaint.studio.ignore_current_click
execute if entity @s[tag=mcpaint.studio.ignore_current_click] run scoreboard players set #studio.session.click mcpaint.calc 0

scoreboard players set #studio.session.canvas_changed mcpaint.calc 0
scoreboard players set #studio.session.update_data mcpaint.calc 0
execute if score #studio.session.click mcpaint.calc matches 1 run scoreboard players set #studio.session.update_data mcpaint.calc 1
execute if score #studio.session.brush.swapOffhand mcpaint.calc matches 1 run scoreboard players set #studio.session.update_data mcpaint.calc 1
execute if score #studio.session.brush.drop mcpaint.calc matches 1 run scoreboard players set #studio.session.update_data mcpaint.calc 1
execute if score #studio.session.update_data mcpaint.calc matches 1 run data modify storage mcpaint:calc internal.studio.data set from entity @s data

execute if score #studio.session.click mcpaint.calc matches 1 as @e[type=text_display,tag=mcpaint.studio.ui_element.parent,distance=..0.1,predicate=mcpaint:studio/ui_overlap,limit=1] on passengers if entity @s[type=marker] run function mcpaint:studio/internal/ui/click_on_marker with entity @s data.definition

### special actions ###
execute if score #studio.session.click mcpaint.calc matches 0 if score #studio.session.brush.swapOffhand mcpaint.calc matches 1 if score #studio.ui_element.max_layer mcpaint.calc matches 0 if score #studio.session.is_sneaking mcpaint.calc matches 0 if data storage mcpaint:calc internal.studio.data.history.undo[0] run function mcpaint:studio/internal/event/undo
execute if score #studio.session.click mcpaint.calc matches 0 if score #studio.session.brush.swapOffhand mcpaint.calc matches 1 if score #studio.ui_element.max_layer mcpaint.calc matches 0 if score #studio.session.is_sneaking mcpaint.calc matches 1 if data storage mcpaint:calc internal.studio.data.history.redo[0] run function mcpaint:studio/internal/event/redo

execute if score #studio.session.canvas_changed mcpaint.calc matches 1 run function mcpaint:studio/api/update_canvas
execute if score #studio.session.update_data mcpaint.calc matches 1 run data modify entity @s data set from storage mcpaint:calc internal.studio.data
