execute as @p[predicate=mcpaint:same_session] run function mcpaint:util/api/get_writable_book_pages
execute unless data storage mcpaint:calc api.util.pages run return fail
execute unless data storage mcpaint:calc api.util.pages[0] run return run tellraw @p[predicate=mcpaint:same_session] {"translate":"mcpaint.error.empty_book","color":"red","with":[{"translate":"item.minecraft.writable_book"}]}

data modify storage mcpaint:calc api.database.filename set from storage mcpaint:calc api.util.pages[0]
function mcpaint:database/api/validate_filename
execute if score #database.valid mcpaint.calc matches 0 run return run tellraw @p[predicate=mcpaint:same_session] {"storage":"mcpaint:calc","nbt":"api.database.error_message","color":"red","interpret":true}

data modify storage mcpaint:calc internal.studio.ui.data.filepath.name set from storage mcpaint:calc api.database.filename
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.new_file.filename,distance=..0.1,limit=1] text set from storage mcpaint:calc internal.studio.ui.data.filename_text