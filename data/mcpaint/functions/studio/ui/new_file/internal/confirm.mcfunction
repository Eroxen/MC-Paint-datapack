data modify storage mcpaint:calc api.database.filename set from storage mcpaint:calc internal.studio.ui.data.filepath.name
function mcpaint:database/api/validate_filename
execute if score #database.valid mcpaint.calc matches 0 run return run tellraw @p[predicate=mcpaint:same_session] {"storage":"mcpaint:calc","nbt":"api.database.error_message","color":"red","interpret":true}

function mcpaint:database/api/get_work with storage mcpaint:calc internal.studio.ui.data.filepath
execute if score #database.found mcpaint.calc matches 0 run function mcpaint:studio/ui/new_file/internal/save
execute if score #database.found mcpaint.calc matches 1 as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] run function mcpaint:studio/ui/error_message/api/spawn {on_ok:"execute as @e[type=marker,tag=mcpaint.studio.ui_element.new_file,distance=..0.1,limit=1] run function mcpaint:studio/ui/new_file/internal/save",message:'{"translate":"mcpaint.error.file_already_exists","color":"black","with":[{"storage":"mcpaint:calc","nbt":"api.database.filename"}]}',bottom_line:-0.7f}