execute as @p[predicate=mcpaint:same_session] run function mcpaint:util/api/get_writable_book_pages
execute unless data storage mcpaint:calc api.util.pages run return fail
execute unless data storage mcpaint:calc api.util.pages[0] run return run tellraw @p[predicate=mcpaint:same_session] {"translate":"mcpaint.error.empty_book","color":"red","with":[{"translate":"item.minecraft.writable_book"}]}

data modify storage mcpaint:calc api.canvas.decoder.input set from storage mcpaint:calc api.util.pages
function mcpaint:canvas/decoder/api/init
execute if score #canvas.b64.error mcpaint.calc matches 1 run return run function mcpaint:studio/ui/error_message/api/spawn {on_ok:"function mcpaint:studio/internal/ui/close",message:'{"storage":"mcpaint:calc","nbt":"internal.canvas.error_message","color":"black","interpret":true}',bottom_line:-0.7f}

function mcpaint:studio/ui/process/api/spawn {init_function:"function mcpaint:studio/ui/import_code/api/process/init",tick_function:"function mcpaint:studio/ui/import_code/api/process/tick"}