execute store result score #studio.ui_element.last_u mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.last_click[0] 1
execute store result score #studio.ui_element.last_v mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.last_click[1] 1
execute if score #studio.ui_element.last_u mcpaint.calc = #studio.ui_element.u.px mcpaint.calc if score #studio.ui_element.last_v mcpaint.calc = #studio.ui_element.v.px mcpaint.calc run return 0