data remove entity @s data.popups[0]

execute if data entity @s data.popups[0] run function mcpaint:studio/popup/rerender
execute unless data entity @s data.popups[0] run function mcpaint:studio/popup/close_all