#####################################################################
# studio/ui/file_menu/api/click.mcfunction
# written by Eroxen
#
# Clicks the error message screen. Called on the marker.
#
# Children:
# 1: ok
# 2: cancel
#####################################################################

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run function mcpaint:studio/ui/error_message/internal/confirm with entity @s data
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run function mcpaint:studio/internal/ui/close