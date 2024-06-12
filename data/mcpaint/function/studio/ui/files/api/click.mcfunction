#####################################################################
# studio/ui/files/api/click.mcfunction
# written by Eroxen
#
# Clicks the new file menu. Called on the marker.
#
# Children:
# 1: ok
# 2: cancel
# 3: previous page
# 4: next page
# 5: trash
# 6: export
#####################################################################

data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 unless data storage mcpaint:calc internal.studio.data{unsaved_changes:1b} run return run function mcpaint:studio/ui/files/internal/load
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 if data storage mcpaint:calc internal.studio.data{unsaved_changes:1b} run return run function mcpaint:studio/ui/error_message/api/spawn {on_ok:"execute as @e[type=marker,tag=mcpaint.studio.ui_element.files,distance=..0.1,limit=1] run function mcpaint:studio/ui/files/internal/load",message:'{"translate":"mcpaint.error.load_while_unsaved","color":"black"}',bottom_line:-0.7f}

execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run return run function mcpaint:studio/internal/ui/close

execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 if data storage mcpaint:calc internal.studio.ui.data{can_previous:1b} run function mcpaint:studio/ui/files/internal/change_page {direction:"remove"}
execute if score #studio.ui_element.focused_child mcpaint.calc matches 4 if data storage mcpaint:calc internal.studio.ui.data{can_next:1b} run function mcpaint:studio/ui/files/internal/change_page {direction:"add"}

execute if score #studio.ui_element.focused_child mcpaint.calc matches 5 run data modify storage mcpaint:calc api.database.filename set from storage mcpaint:calc internal.studio.ui.data.filepath.name
execute if score #studio.ui_element.focused_child mcpaint.calc matches 5 run function mcpaint:studio/ui/error_message/api/spawn {on_ok:"execute as @e[type=marker,tag=mcpaint.studio.ui_element.files,distance=..0.1,limit=1] run function mcpaint:studio/ui/files/internal/delete",message:'{"translate":"mcpaint.message.confirm_delete_file","color":"black","with":[{"storage":"mcpaint:calc","nbt":"api.database.filename"}]}',bottom_line:-0.7f}
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run function mcpaint:studio/ui/files/internal/export

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1000..1007 run function mcpaint:studio/ui/files/internal/click_file_row

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data