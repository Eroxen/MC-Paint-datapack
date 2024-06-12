#####################################################################
# database/api/inspect_work.mcfunction
# written by Eroxen
#
# Inspects a work.
#
# Macro arguments:
# - author: (list<int>) UUID of the author
# - name: (str) name of the work
# - page: (int) page to go back to
#####################################################################

$function mcpaint:database/api/get_work {author:$(author),name:"$(name)"}
execute if score #database.found mcpaint.calc matches 0 run tellraw @s {"text":"not found.","color":"red"}
execute if score #database.found mcpaint.calc matches 0 run return 0

data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas
function mcpaint:canvas/api/get_info
function mcpaint:canvas/api/get_fullbright_shading

tellraw @s {"text":"================================","color":"light_purple"}

tellraw @s {"nbt":"api.canvas.text","storage":"mcpaint:calc","interpret":true}
tellraw @s {"text":"- name: ","extra":[{"nbt":"api.database.work.name","storage":"mcpaint:calc","color":"yellow"}]}
tellraw @s {"text":"- size (blocks): ","extra":[{"score":{"name":"#canvas.width_blocks","objective":"mcpaint.calc"},"color":"red"},{"text":" x "},{"score":{"name":"#canvas.height_blocks","objective":"mcpaint.calc"},"color":"red"}]}
tellraw @s {"text":"- size (pixels): ","extra":[{"score":{"name":"#canvas.width_px","objective":"mcpaint.calc"},"color":"red"},{"text":" x "},{"score":{"name":"#canvas.height_px","objective":"mcpaint.calc"},"color":"red"}]}
tellraw @s {"text":"- text size: ","extra":[{"nbt":"api.canvas.canvas.resolved_text_size","storage":"mcpaint:calc","color":"red"},{"text":" bytes"}]}
$tellraw @s {"text":"====","color":"light_purple","extra":[{"text":"[←back]","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"Back to overview"}]},"clickEvent":{"action":"run_command","value":"/function mcpaint:database/api/inspect_author_page {UUID:$(author),page:$(page)}"}},{"text":"======================"}]}