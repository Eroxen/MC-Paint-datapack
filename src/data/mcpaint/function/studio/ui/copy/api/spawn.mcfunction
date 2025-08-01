#####################################################################
# studio/ui/copy/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Opens the copy window.
#####################################################################

data modify storage mcpaint:calc internal.studio.spawn_ui_stack set from storage mcpaint:calc internal.studio.ui.data

data modify storage mcpaint:calc internal.studio.anchored_pos set value {anchor:[0.5f,0.5f],offset:[-0.5f,-0.5f],min_v:0f}
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 1
scoreboard players operation #studio.ui_element.layer mcpaint.calc += #studio.ui_element.max_layer mcpaint.calc

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"copy",size:[1000,1000],origin:[500,1000]}
function mcpaint:studio/internal/ui/spawn_element/init_values
data modify storage mcpaint:calc internal.studio.ui.spawn.transformation.scale set value [0.625f,0.625f,0.625f]

data modify storage mcpaint:calc internal.studio.ui.data.book_pages set from storage mcpaint:calc internal.canvas.encoder.output.book_pages
data modify storage mcpaint:calc internal.studio.ui.data.clipboard_text set from storage mcpaint:calc internal.canvas.encoder.output.clipboard_text

function mcpaint:studio/ui/copy/internal/summon with storage mcpaint:calc internal.studio.ui.spawn

data modify storage mcpaint:calc internal.studio.ui.data set from storage mcpaint:calc internal.studio.spawn_ui_stack