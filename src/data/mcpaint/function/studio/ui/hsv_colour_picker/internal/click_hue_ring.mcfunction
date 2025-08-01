scoreboard players set #temp.du mcpaint.calc 500
scoreboard players operation #temp.du mcpaint.calc -= #studio.ui_element.u mcpaint.calc
scoreboard players set #temp.dv mcpaint.calc 938
scoreboard players operation #temp.dv mcpaint.calc -= #studio.ui_element.v mcpaint.calc

data modify storage eroxified2:api entity.pos set value [0d,0d,0d]
execute store result storage eroxified2:api entity.pos[2] double -0.01 run scoreboard players get #temp.du mcpaint.calc
execute store result storage eroxified2:api entity.pos[0] double -0.01 run scoreboard players get #temp.dv mcpaint.calc
function eroxified2:entity/api/pos_to_rotation
execute store result score #studio.ui_element.temp mcpaint.calc run data get storage eroxified2:api entity.rotation[0] 1000
scoreboard players operation #studio.ui_element.temp mcpaint.calc %= #const.360000 mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.data.hsv[0] float 0.001 run scoreboard players get #studio.ui_element.temp mcpaint.calc

function mcpaint:studio/ui/hsv_colour_picker/internal/update_hsv_display