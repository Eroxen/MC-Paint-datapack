#####################################################################
# studio/ui/error_message/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Opens a generic error message window.
#
# Macro arguments:
# - message: (string) filename
# - bottom_line: (float) translation to bottom line of message text
# - on_ok: (string) command to run when the 'ok' button is pressed
#####################################################################

data modify storage mcpaint:calc internal.studio.spawn_ui_stack set from storage mcpaint:calc internal.studio.ui.data

function mcpaint:studio/internal/ui/spawn_element/get_info_from_marker
data modify storage mcpaint:calc internal.studio.anchored_pos set value {anchor:[0.5f,0.5f],offset:[-0.625f,-0.625f],min_v:0f}
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 1
scoreboard players operation #studio.ui_element.layer mcpaint.calc += #studio.ui_element.max_layer mcpaint.calc

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"error_message",size:[1250,1250],origin:[625,1250]}
function mcpaint:studio/internal/ui/spawn_element/init_values
$function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"message_transform",relative:{translation:[0f,$(bottom_line)f,0.01f]}}

$data modify storage mcpaint:calc internal.studio.ui.data merge value {message:'$(message)',on_ok:"$(on_ok)"}

function mcpaint:studio/ui/error_message/internal/summon with storage mcpaint:calc internal.studio.ui.spawn

data modify storage mcpaint:calc internal.studio.ui.data set from storage mcpaint:calc internal.studio.spawn_ui_stack