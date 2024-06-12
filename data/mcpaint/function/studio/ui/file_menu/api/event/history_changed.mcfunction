data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

### filename text ###
scoreboard players set #studio.ui_element.text_changed mcpaint.calc 0

execute if data storage mcpaint:calc internal.studio.data{unsaved_changes:1b} store success score #studio.ui_element.temp mcpaint.calc run data modify storage mcpaint:calc internal.studio.ui.data.filename_text_parts.save_indicator set value "*"
execute if score #studio.ui_element.temp mcpaint.calc matches 1 run scoreboard players set #studio.ui_element.text_changed mcpaint.calc 1

execute store result score #api.util.bytes mcpaint.calc run data get storage mcpaint:calc internal.studio.data.canvas.resolved_text_size 1
function mcpaint:util/api/format_bytes
execute store success score #studio.ui_element.temp mcpaint.calc run data modify storage mcpaint:calc internal.studio.ui.data.filename_text_parts.bytes set from storage mcpaint:calc api.util.str
execute if score #studio.ui_element.temp mcpaint.calc matches 1 run scoreboard players set #studio.ui_element.text_changed mcpaint.calc 1

execute if score #studio.ui_element.text_changed mcpaint.calc matches 1 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.file_menu.filename,distance=..0.1,limit=1] text set from storage mcpaint:calc internal.studio.ui.data.filename_text
execute if score #studio.ui_element.text_changed mcpaint.calc matches 1 run data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data

### background text ###
scoreboard players set #studio.ui_element.text_changed mcpaint.calc 0

execute if data storage mcpaint:calc internal.studio.data.history.undo[0] store success score #studio.ui_element.temp mcpaint.calc run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.undo set value "\\\\u0207"
execute unless data storage mcpaint:calc internal.studio.data.history.undo[0] store success score #studio.ui_element.temp mcpaint.calc run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.undo set value "\\\\u0217"
execute if score #studio.ui_element.temp mcpaint.calc matches 1 run scoreboard players set #studio.ui_element.text_changed mcpaint.calc 1

execute if data storage mcpaint:calc internal.studio.data.history.redo[0] store success score #studio.ui_element.temp mcpaint.calc run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.redo set value "\\\\u0208"
execute unless data storage mcpaint:calc internal.studio.data.history.redo[0] store success score #studio.ui_element.temp mcpaint.calc run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.redo set value "\\\\u0218"
execute if score #studio.ui_element.temp mcpaint.calc matches 1 run scoreboard players set #studio.ui_element.text_changed mcpaint.calc 1

execute if score #studio.ui_element.text_changed mcpaint.calc matches 0 run return 0

function mcpaint:studio/ui/file_menu/internal/generate_text with storage mcpaint:calc internal.studio.ui.data.text_macro
execute on vehicle run data modify entity @s text set from storage mcpaint:calc internal.studio.ui.data.text

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data