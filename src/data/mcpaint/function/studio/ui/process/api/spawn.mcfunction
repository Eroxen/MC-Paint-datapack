#####################################################################
# studio/ui/process/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Shows the progress bar for a running process.
#
# Macro arguments:
# - init_function: (string) function to call during spawning
# - tick_function: (string) function to tick the process
#
# Scoreboard input:
# - #studio.ui_element.total_steps mcpaint.calc: amount of steps when the process is done
#####################################################################

data modify storage mcpaint:calc internal.studio.spawn_ui_stack set from storage mcpaint:calc internal.studio.ui.data

data modify storage mcpaint:calc internal.studio.anchored_pos set value {anchor:[0.5f,0.5f],offset:[-0.750f,-0.1875f],min_v:0f}
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 1
scoreboard players operation #studio.ui_element.layer mcpaint.calc += #studio.ui_element.max_layer mcpaint.calc

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"process",size:[1500,375],origin:[750,375]}
function mcpaint:studio/internal/ui/spawn_element/init_values
data modify storage mcpaint:calc internal.studio.ui.spawn.transformation.scale set value [0.625f,0.625f,0.625f]

$data modify storage mcpaint:calc internal.studio.ui.data merge value {tick:{function:"$(tick_function)"},bar:{level:0,steps:0,total_steps:0}}
$$(init_function)
execute store result storage mcpaint:calc internal.studio.ui.data.bar.total_steps int 1 run scoreboard players get #studio.ui_element.total_steps mcpaint.calc
function mcpaint:studio/ui/process/internal/summon with storage mcpaint:calc internal.studio.ui.spawn
schedule function mcpaint:studio/ui/process/internal/clock 1t replace

data modify storage mcpaint:calc internal.studio.ui.data set from storage mcpaint:calc internal.studio.spawn_ui_stack