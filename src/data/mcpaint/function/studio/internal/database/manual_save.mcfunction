data modify storage mcpaint:calc api.canvas.canvas set from entity @s data.canvas
function mcpaint:database/api/save_canvas with storage mcpaint:calc internal.database.filepath

tellraw @p {"text": "saved."}