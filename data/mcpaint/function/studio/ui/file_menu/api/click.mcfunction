#####################################################################
# studio/ui/file_menu/api/click.mcfunction
# written by Eroxen
#
# Clicks the file menu. Called on the marker.
#
# Children:
# 1: save
# 2: save as
# 3: load
# 4: new file
# 5: export
# 6: import code
# 11: undo
# 12: redo
#####################################################################

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run scoreboard players set #studio.ui_element.has_filepath mcpaint.calc 0
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 if data storage mcpaint:calc internal.studio.data.filepath.author if data storage mcpaint:calc internal.studio.data.filepath.name run scoreboard players set #studio.ui_element.has_filepath mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 if score #studio.ui_element.has_filepath mcpaint.calc matches 0 run return run execute as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] run function mcpaint:studio/ui/save_as/api/spawn
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 if score #studio.ui_element.has_filepath mcpaint.calc matches 1 run return run function mcpaint:studio/internal/event/save

execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run return run function mcpaint:studio/ui/save_as/api/spawn
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run return run function mcpaint:studio/ui/files/api/spawn
execute if score #studio.ui_element.focused_child mcpaint.calc matches 4 run return run function mcpaint:studio/ui/new_file/api/spawn

execute if score #studio.ui_element.focused_child mcpaint.calc matches 5 run return run function mcpaint:studio/ui/file_menu/internal/export
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 as @p[predicate=mcpaint:same_session] unless predicate mcpaint:permission/import_base64 run return run tellraw @s {"translate":"mcpaint.error.no_permission","color":"red"}
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run return run function mcpaint:studio/ui/import_code/api/spawn

execute if score #studio.ui_element.focused_child mcpaint.calc matches 11 run return run function mcpaint:studio/internal/event/undo
execute if score #studio.ui_element.focused_child mcpaint.calc matches 12 run return run function mcpaint:studio/internal/event/redo