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

execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run function mcpaint:studio/internal/ui/close

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data