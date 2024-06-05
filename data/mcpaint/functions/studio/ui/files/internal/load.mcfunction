data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data
function mcpaint:studio/internal/ui/close

data modify storage mcpaint:calc internal.studio.data.filepath set from storage mcpaint:calc internal.studio.ui.data.filepath

function mcpaint:studio/internal/event/file_changed
tellraw @p[predicate=mcpaint:same_session] {"translate":"mcpaint.message.loaded_from_file","with":[{"storage":"mcpaint:calc","nbt":"internal.studio.data.filepath.name"}]}
advancement grant @p[predicate=mcpaint:same_session] only mcpaint:guide/load_work