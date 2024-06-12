data modify storage mcpaint:calc internal.studio.ui.definition set from entity @s data.definition
execute store result score #studio.ui_element.size.u mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.definition.size[0] 1
execute store result score #studio.ui_element.size.v mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.definition.size[1] 1

scoreboard players operation #studio.ui_element.u mcpaint.calc = #studio.u mcpaint.calc
scoreboard players operation #studio.ui_element.v mcpaint.calc = #studio.v mcpaint.calc
scoreboard players operation #studio.ui_element.u mcpaint.calc -= #studio.ui_element.pos.u mcpaint.calc
scoreboard players operation #studio.ui_element.v mcpaint.calc -= #studio.ui_element.pos.v mcpaint.calc

scoreboard players operation #studio.ui_element.u.px mcpaint.calc = #studio.ui_element.u mcpaint.calc
scoreboard players operation #studio.ui_element.v.px mcpaint.calc = #studio.ui_element.v mcpaint.calc
scoreboard players operation #studio.ui_element.u.px mcpaint.calc *= #studio.ui.pixel_density mcpaint.calc
scoreboard players operation #studio.ui_element.v.px mcpaint.calc *= #studio.ui.pixel_density mcpaint.calc
scoreboard players operation #studio.ui_element.u.px mcpaint.calc /= #const.1000 mcpaint.calc
scoreboard players operation #studio.ui_element.v.px mcpaint.calc /= #const.1000 mcpaint.calc

$function mcpaint:studio/ui/$(name)/api/get_focused_child
execute unless score @s mcpaint.ui.hover = #studio.ui_element.focused_child mcpaint.calc run function mcpaint:studio/internal/ui/change_hovered_child with entity @s data.definition