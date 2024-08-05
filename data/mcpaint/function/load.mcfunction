### version ###
data modify storage mcpaint:calc internal.credit set value {}
data modify storage mcpaint:calc internal.credit.datapack_version set value "v1.3.1"
data modify storage mcpaint:calc internal.credit.rp_version_message set value '{"translate":"mcpaint.format.rp_version","with":[{"translate":"mcpaint.format.rp_version.1.3","with":[{"text":"download page","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"modrinth.com"}]},"clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/mc-paint/version/latest"}},{"translate":"mcpaint.message.resource_pack_reload","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"mcpaint.message.resource_pack_reload.info"}]},"clickEvent":{"action":"run_command","value":"/trigger mcpaint.reload"}},{"translate":"mcpaint.message.resource_pack_dismiss","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"mcpaint.message.resource_pack_dismiss.info"}]},"clickEvent":{"action":"run_command","value":"/trigger mcpaint.settings set 20000"}}],"fallback":"§cYou have installed a version of the Resource Pack that does not mach with the Datapack version (1.3). You can download the correct version from the %1$s.","color":"green","bold":false}],"fallback":""}'
######

scoreboard objectives add mcpaint.calc dummy
scoreboard objectives add mcpaint.session dummy
scoreboard objectives add mcpaint.using_brush dummy
scoreboard objectives add mcpaint.ui.u1 dummy
scoreboard objectives add mcpaint.ui.u2 dummy
scoreboard objectives add mcpaint.ui.v1 dummy
scoreboard objectives add mcpaint.ui.v2 dummy
scoreboard objectives add mcpaint.ui.layer dummy
scoreboard objectives add mcpaint.ui.hover dummy
scoreboard objectives add mcpaint.reload trigger
scoreboard objectives add mcpaint.settings trigger
scoreboard objectives add mcpaint.credits trigger

execute store result score maxCommandChainLength mcpaint.calc run gamerule maxCommandChainLength
execute unless score maxCommandChainLength mcpaint.calc matches 1000000.. run gamerule maxCommandChainLength 1000000

scoreboard players set #const.-1 mcpaint.calc -1
scoreboard players set #const.2 mcpaint.calc 2
scoreboard players set #const.6 mcpaint.calc 6
scoreboard players set #const.8 mcpaint.calc 8
scoreboard players set #const.10 mcpaint.calc 10
scoreboard players set #const.16 mcpaint.calc 16
scoreboard players set #const.20 mcpaint.calc 20
scoreboard players set #const.30 mcpaint.calc 30
scoreboard players set #const.32 mcpaint.calc 32
scoreboard players set #const.32^2 mcpaint.calc 1024
scoreboard players set #const.256 mcpaint.calc 256
scoreboard players set #const.256^2 mcpaint.calc 65536
scoreboard players set #const.1000 mcpaint.calc 1000
scoreboard players set #const.2000 mcpaint.calc 2000
scoreboard players set #const.60 mcpaint.calc 60
scoreboard players set #const.60000 mcpaint.calc 60000
scoreboard players set #const.360000 mcpaint.calc 360000

function mcpaint:assets/load
function mcpaint:studio/load
function mcpaint:custom_painting/load
function mcpaint:canvas/load
function mcpaint:util/load
function mcpaint:settings/load
function mcpaint:item/paint_bucket/load
schedule function mcpaint:clock_1s 1s replace