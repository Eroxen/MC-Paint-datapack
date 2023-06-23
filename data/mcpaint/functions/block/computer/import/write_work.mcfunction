data modify storage mcpaint:calc filepath set value {}
data modify storage mcpaint:calc filepath.author set from storage mcpaint:calc interactor.UUID
data modify storage mcpaint:calc filepath.name set from entity @s data.computer_page.filename

data modify storage mcpaint:database write_file set value {canvas:{}}
data modify storage mcpaint:database write_file.canvas.colour_array set from entity @s data.computer_page.canvas.colour_array
data modify storage mcpaint:database write_file.canvas.resolved_rows set from entity @s data.computer_page.canvas.resolved_rows
data modify storage mcpaint:database write_file.canvas.resolved_text set from entity @s data.computer_page.canvas.resolved_text
data modify storage mcpaint:database write_file.canvas.width_px set from entity @s data.computer_page.canvas.width_px
data modify storage mcpaint:database write_file.canvas.height_px set from entity @s data.computer_page.canvas.height_px
data modify storage mcpaint:database write_file.canvas.width_blocks set from entity @s data.computer_page.canvas.width_blocks
data modify storage mcpaint:database write_file.canvas.height_blocks set from entity @s data.computer_page.canvas.height_blocks
function mcpaint:database/write_file

function mcpaint:block/computer/popup/import_successful/open
advancement grant @p only mcpaint:guide/decode_base64