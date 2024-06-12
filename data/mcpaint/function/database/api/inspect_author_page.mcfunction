#####################################################################
# database/api/inspect_author_page.mcfunction
# written by Eroxen
#
# Inspects one author.
#
# Macro arguments:
# - UUID: (list<int>) UUID of the author
# - page: (int) page index
#####################################################################

$data modify storage mcpaint:calc api.database.page set value {author:$(UUID),size:10,index:$(page)}
function mcpaint:database/api/get_paged_work_names
execute if score #database.found mcpaint.calc matches 0 run tellraw @s {"text":"not found.","color":"red"}
execute if score #database.found mcpaint.calc matches 0 run return 0

tellraw @s {"text":"================================","color":"light_purple"}
$data modify storage mcpaint:calc internal.database.inspect set value {work:{author:$(UUID),page:$(page)}}
scoreboard players set #database.i mcpaint.calc 0
function mcpaint:database/internal/inspect/author_page/loop

$data modify storage mcpaint:calc internal.database.inspect set value {UUID:$(UUID),previous:0,next:0}
execute store result storage mcpaint:calc internal.database.inspect.previous int 1 run scoreboard players get #database.page.previous mcpaint.calc
execute store result storage mcpaint:calc internal.database.inspect.next int 1 run scoreboard players get #database.page.next mcpaint.calc
function mcpaint:database/internal/inspect/author_page/buttons with storage mcpaint:calc internal.database.inspect
tellraw @s {"text":"","extra":[{"text":"===== ","color":"light_purple"},{"storage":"mcpaint:calc","nbt":"internal.database.inspect.previous_button","interpret":true},{"text":" showing "},{"score":{"name":"#database.page.from","objective":"mcpaint.calc"}},{"text":"-"},{"score":{"name":"#database.page.to","objective":"mcpaint.calc"}},{"text":" of "},{"score":{"name":"#database.works","objective":"mcpaint.calc"}},{"text":" "},{"storage":"mcpaint:calc","nbt":"internal.database.inspect.next_button","interpret":true},{"text":" =====","color":"light_purple"}]}