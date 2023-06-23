scoreboard players operation clicked_line mcpaint.calc = screenspace_y mcpaint.calc
scoreboard players remove clicked_line mcpaint.calc 563
scoreboard players set op mcpaint.calc -63
scoreboard players operation clicked_line mcpaint.calc /= op mcpaint.calc

scoreboard players set valid mcpaint.calc 0

execute if score clicked_line mcpaint.calc matches 0 run scoreboard players set valid mcpaint.calc 1
execute if score clicked_line mcpaint.calc matches 1 unless predicate mcpaint:holding_writable_book run tellraw @s {"translate":"mcpaint.message.must_hold_writable_book"}
execute if score clicked_line mcpaint.calc matches 1 if predicate mcpaint:holding_writable_book run scoreboard players set valid mcpaint.calc 1
execute if score clicked_line mcpaint.calc matches 1 if entity @e[type=marker,tag=mcpaint.computer.marker,tag=mcpaint.computer.marker.has_active_task,distance=..0.1,limit=1] run scoreboard players set valid mcpaint.calc 0
execute if score clicked_line mcpaint.calc matches 2 if predicate mcpaint:survival_or_adventure unless predicate mcpaint:holding_painting run tellraw @s {"translate":"mcpaint.message.must_hold_painting"}
execute if score clicked_line mcpaint.calc matches 2 if predicate mcpaint:holding_painting run scoreboard players set valid mcpaint.calc 1
execute if score clicked_line mcpaint.calc matches 2 unless predicate mcpaint:survival_or_adventure run scoreboard players set valid mcpaint.calc 1

execute if score valid mcpaint.calc matches 0 run tellraw @s[tag=mcpaint.player.debug] [{"text":"clicked line ","color":"red"},{"score":{"name":"clicked_line","objective":"mcpaint.calc"}}]
execute if score valid mcpaint.calc matches 1 run tellraw @s[tag=mcpaint.player.debug] [{"text":"clicked line ","color":"green"},{"score":{"name":"clicked_line","objective":"mcpaint.calc"}}]

data remove storage mcpaint:calc filepath
data modify storage mcpaint:calc filepath set from entity @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] data.computer_page.filepath
function mcpaint:database/open_filepath

execute if data storage mcpaint:database search{found_work:0b} run tellraw @s {"translate":"mcpaint.message.could_not_find_file","extra":[{"text":"\""},{"nbt":"search.author.name","storage":"mcpaint:database"},{"text":"\"->\""},{"nbt":"search.work.name","storage":"mcpaint:database"},{"text":"\""}]}
execute if data storage mcpaint:database search{found_work:0b} run scoreboard players set valid mcpaint.calc 0

execute if score valid mcpaint.calc matches 1 if score clicked_line mcpaint.calc matches 0 as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/popup/delete/open

execute if score valid mcpaint.calc matches 1 if score clicked_line mcpaint.calc matches 1 run data modify storage mcpaint:calc Item set from entity @s SelectedItem
execute if score valid mcpaint.calc matches 1 if score clicked_line mcpaint.calc matches 1 run function mcpaint:item/decrement_mainhand
execute if score valid mcpaint.calc matches 1 if score clicked_line mcpaint.calc matches 1 as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/files/begin_encode

execute if score valid mcpaint.calc matches 1 if score clicked_line mcpaint.calc matches 2 if predicate mcpaint:survival_or_adventure run function mcpaint:item/decrement_mainhand
execute if score valid mcpaint.calc matches 1 if score clicked_line mcpaint.calc matches 2 as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/files/export_painting