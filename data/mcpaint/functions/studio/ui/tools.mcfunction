data modify storage mcpaint:calc ui set from entity @s data.ui.tools
execute store result score ui_u mcpaint.calc run data get storage mcpaint:calc painter_command.u 1
execute store result score ui_v mcpaint.calc run data get storage mcpaint:calc painter_command.v 1

#tellraw @a {"nbt":"painter_command","storage":"mcpaint:calc"}

# tool
execute if score ui_u mcpaint.calc matches 250.. run scoreboard players set selected_tool mcpaint.calc 1000
execute if score ui_u mcpaint.calc matches 250.. run scoreboard players operation selected_tool mcpaint.calc -= ui_v mcpaint.calc
execute if score ui_u mcpaint.calc matches 250.. run scoreboard players set op mcpaint.calc 250
execute if score ui_u mcpaint.calc matches 250.. run scoreboard players operation selected_tool mcpaint.calc /= op mcpaint.calc
execute if score ui_u mcpaint.calc matches 250.. run scoreboard players add selected_tool mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 250.. store result score max mcpaint.calc run data get storage mcpaint:calc default_studio_data.tools
execute if score ui_u mcpaint.calc matches 250.. if score selected_tool mcpaint.calc matches 1.. if score selected_tool mcpaint.calc <= max mcpaint.calc store result storage mcpaint:calc ui.selected_tool int 1 run scoreboard players get selected_tool mcpaint.calc

execute if score ui_u mcpaint.calc matches 250.. run function mcpaint:studio/ui/tool_changed

execute if score ui_u mcpaint.calc matches 94..219 run scoreboard players set selected_subtool mcpaint.calc 1000
execute if score ui_u mcpaint.calc matches 94..219 run scoreboard players operation selected_subtool mcpaint.calc -= ui_v mcpaint.calc
execute if score ui_u mcpaint.calc matches 94..219 run scoreboard players set op mcpaint.calc 125
execute if score ui_u mcpaint.calc matches 94..219 run scoreboard players operation selected_subtool mcpaint.calc /= op mcpaint.calc
execute if score ui_u mcpaint.calc matches 94..219 run scoreboard players add selected_subtool mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 94..219 store result score max mcpaint.calc run data get storage mcpaint:calc ui.selected_tool_data.subtools
execute if score ui_u mcpaint.calc matches 94..219 if score selected_subtool mcpaint.calc matches 1.. if score selected_subtool mcpaint.calc <= max mcpaint.calc store result storage mcpaint:calc ui.selected_subtool int 1 run scoreboard players get selected_subtool mcpaint.calc

execute if score ui_u mcpaint.calc matches 94..219 run function mcpaint:studio/ui/subtool_changed


data modify entity @s data.ui.tools set from storage mcpaint:calc ui
function mcpaint:studio/ui/sync