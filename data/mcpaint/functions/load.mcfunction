scoreboard objectives add mcpaint.calc dummy
scoreboard objectives add mcpaint.session dummy
scoreboard objectives add mcpaint.using_brush dummy
scoreboard objectives add mcpaint.ui.u1 dummy
scoreboard objectives add mcpaint.ui.u2 dummy
scoreboard objectives add mcpaint.ui.v1 dummy
scoreboard objectives add mcpaint.ui.v2 dummy
scoreboard objectives add mcpaint.ui.layer dummy
scoreboard objectives add mcpaint.ui.hover dummy

execute store result score maxCommandChainLength mcpaint.calc run gamerule maxCommandChainLength
execute unless score maxCommandChainLength mcpaint.calc matches 1000000.. run gamerule maxCommandChainLength 1000000

scoreboard players set #const.-1 mcpaint.calc -1
scoreboard players set #const.2 mcpaint.calc 2
scoreboard players set #const.6 mcpaint.calc 6
scoreboard players set #const.10 mcpaint.calc 10
scoreboard players set #const.20 mcpaint.calc 20
scoreboard players set #const.30 mcpaint.calc 30
scoreboard players set #const.32 mcpaint.calc 32
scoreboard players set #const.32^2 mcpaint.calc 1024
scoreboard players set #const.1000 mcpaint.calc 1000
scoreboard players set #const.2000 mcpaint.calc 2000
scoreboard players set #const.60 mcpaint.calc 60
scoreboard players set #const.60000 mcpaint.calc 60000
scoreboard players set #const.360000 mcpaint.calc 360000
scoreboard players set #studio.ui.pixel_density mcpaint.calc 64

function mcpaint:assets/load
function mcpaint:studio/load
function mcpaint:custom_painting/load
function mcpaint:canvas/load
function mcpaint:util/load
schedule function mcpaint:clock_1s 1s replace