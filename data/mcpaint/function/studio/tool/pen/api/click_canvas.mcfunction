data modify storage mcpaint:calc internal.studio.event set value {event:"set_pixel",parameters:{u:0,v:0,colour:0}}
data modify storage mcpaint:calc internal.studio.event.parameters.colour set from storage mcpaint:calc internal.studio.data.colour.selected
execute store result storage mcpaint:calc internal.studio.event.parameters.u int 1 run scoreboard players get #studio.ui_element.v.px mcpaint.calc
execute store result storage mcpaint:calc internal.studio.event.parameters.v int 1 run scoreboard players get #studio.ui_element.u.px mcpaint.calc

execute unless data storage mcpaint:calc internal.studio.tool.active_subtool.pattern run function mcpaint:studio/internal/event/set_pixel

execute if data storage mcpaint:calc internal.studio.tool.active_subtool.pattern run data modify storage mcpaint:calc internal.studio.event.event set value "set_pixels"
execute if data storage mcpaint:calc internal.studio.tool.active_subtool.pattern run data modify storage mcpaint:calc internal.studio.event.parameters.pixels set from storage mcpaint:calc internal.studio.tool.active_subtool.pattern
execute if data storage mcpaint:calc internal.studio.tool.active_subtool.pattern run function mcpaint:studio/internal/event/set_pixels

execute if score #studio.session.canvas_changed mcpaint.calc matches 1 run function mcpaint:studio/internal/event/add_history