scoreboard players add screenspace_x mcpaint.calc 500
scoreboard players add screenspace_y mcpaint.calc 500

tellraw @s[tag=mcpaint.player.debug] [{"score":{"name":"screenspace_x","objective":"mcpaint.calc"}},{"text":"  "},{"score":{"name":"screenspace_y","objective":"mcpaint.calc"}}]

data modify storage mcpaint:calc computer_page set from storage mcpaint:calc EntityData.data.computer_page

execute if data storage mcpaint:calc computer_page{name:"desktop"} run function mcpaint:block/computer/desktop/click
execute if data storage mcpaint:calc computer_page{name:"files"} run function mcpaint:block/computer/files/click
execute if data storage mcpaint:calc computer_page{name:"import"} run function mcpaint:block/computer/import/click