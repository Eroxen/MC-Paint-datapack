scoreboard players operation @s mcpaint.session = .new mcpaint.session
tag @s add mcpaint.studio.in_session

data modify storage mcpaint:calc internal.studio.data set from entity @s data

function mcpaint:studio/ui/hsv_colour_picker/api/spawn
function mcpaint:studio/ui/file_menu/api/spawn
function mcpaint:studio/ui/canvas/api/spawn