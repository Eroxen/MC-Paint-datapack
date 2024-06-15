data modify storage mcpaint:calc internal.database.filepath set from storage mcpaint:calc internal.studio.ui.data.filepath
function mcpaint:database/api/get_work with storage mcpaint:calc internal.database.filepath
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas
function mcpaint:canvas/encoder/api/init

function mcpaint:studio/ui/process/api/spawn {init_function:"function mcpaint:studio/ui/files/api/encode_process/init",tick_function:"function mcpaint:studio/ui/files/api/encode_process/tick"}