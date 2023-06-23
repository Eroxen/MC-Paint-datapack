scoreboard players add screenspace_x mcpaint.calc 500
scoreboard players add screenspace_y mcpaint.calc 500

tellraw @s[tag=mcpaint.player.debug] [{"text":"(popup) "},{"score":{"name":"screenspace_x","objective":"mcpaint.calc"}},{"text":"  "},{"score":{"name":"screenspace_y","objective":"mcpaint.calc"}}]

data modify storage mcpaint:calc popup set from storage mcpaint:calc EntityData.data.popup

execute if data storage mcpaint:calc popup{name:"delete"} as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/popup/delete/click
execute if data storage mcpaint:calc popup{name:"notice"} as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/popup/notice/click
execute if data storage mcpaint:calc popup{name:"import_overwrite"} as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/popup/import_overwrite/click
execute if data storage mcpaint:calc popup{name:"import_successful"} as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/popup/import_successful/click