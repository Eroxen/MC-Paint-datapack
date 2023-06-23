data modify storage mcpaint:calc filepath set value {author:[I;0,0,0,0],name:""}
execute if data entity @s data.history run data remove entity @s data.history
execute if data entity @s data.painter.UUID run data modify storage mcpaint:calc filepath.author set from entity @s data.painter.UUID
execute if data entity @s data.filename run data modify storage mcpaint:calc filepath.name set from entity @s data.filename
execute if data storage mcpaint:calc painter_command.filename run data modify storage mcpaint:calc filepath.name set from storage mcpaint:calc painter_command.filename
function mcpaint:database/open_filepath
execute if data storage mcpaint:database search{found_work:1b} run function mcpaint:studio/command/load_found

execute if data storage mcpaint:database search{found_work:1b} run data modify storage mcpaint:calc message set value '{"translate":"mcpaint.message.loaded_from","extra":[{"text":"\\""},{"nbt":"search.author.name","storage":"mcpaint:database"},{"text":"\\"->\\""},{"nbt":"search.work.name","storage":"mcpaint:database"},{"text":"\\""}]}'
execute if data storage mcpaint:database search{found_work:0b} run data modify storage mcpaint:calc message set value '{"translate":"mcpaint.message.could_not_find_file","extra":[{"text":"\\""},{"nbt":"search.author.name","storage":"mcpaint:database"},{"text":"\\"->\\""},{"nbt":"search.work.name","storage":"mcpaint:database"},{"text":"\\""}]}'
function mcpaint:studio/send_message_to_painter