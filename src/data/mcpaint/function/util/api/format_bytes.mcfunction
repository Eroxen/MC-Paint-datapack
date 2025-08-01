#####################################################################
# util/api/format_bytes.mcfunction
# written by Eroxen
#
# Formats bytes as test.
#
# Scoreboard input:
# - #api.util.bytes mcpaint.calc: number of bytes
#
# Storage output :
# - mcpaint:calc api.util.str: formatted string
#####################################################################

data modify storage mcpaint:calc internal.util.format_bytes set value {before:0,sep:".",after:0,unit:"B"}

execute if score #api.util.bytes mcpaint.calc matches 0..999 store result storage mcpaint:calc internal.util.format_bytes.before int 1 run scoreboard players get #api.util.bytes mcpaint.calc
execute if score #api.util.bytes mcpaint.calc matches 0..999 run data modify storage mcpaint:calc internal.util.format_bytes merge value {sep:"",after:""}

execute if score #api.util.bytes mcpaint.calc matches 1000.. run scoreboard players operation #internal.util.kilobytes mcpaint.calc = #api.util.bytes mcpaint.calc
execute if score #api.util.bytes mcpaint.calc matches 1000.. run scoreboard players operation #internal.util.kilobytes mcpaint.calc /= #const.1000 mcpaint.calc
execute if score #api.util.bytes mcpaint.calc matches 1000.. run scoreboard players operation #internal.util.kilobytes mcpaint.calc *= #const.1000 mcpaint.calc
execute if score #api.util.bytes mcpaint.calc matches 1000.. run scoreboard players operation #internal.util.bytes mcpaint.calc = #api.util.bytes mcpaint.calc
execute if score #api.util.bytes mcpaint.calc matches 1000.. run scoreboard players operation #internal.util.bytes mcpaint.calc -= #internal.util.kilobytes mcpaint.calc
execute if score #api.util.bytes mcpaint.calc matches 1000.. run scoreboard players operation #internal.util.kilobytes mcpaint.calc /= #const.1000 mcpaint.calc
execute if score #api.util.bytes mcpaint.calc matches 1000.. store result storage mcpaint:calc internal.util.format_bytes.before int 1 run scoreboard players get #internal.util.kilobytes mcpaint.calc
execute if score #api.util.bytes mcpaint.calc matches 1000.. store result storage mcpaint:calc internal.util.format_bytes.after int 0.01 run scoreboard players get #internal.util.bytes mcpaint.calc
execute if score #api.util.bytes mcpaint.calc matches 1000.. run data modify storage mcpaint:calc internal.util.format_bytes.unit set value "kB"
execute if score #api.util.bytes mcpaint.calc matches 1000.. if score #internal.util.kilobytes mcpaint.calc matches 10.. run data modify storage mcpaint:calc internal.util.format_bytes merge value {sep:"",after:""}

function mcpaint:util/internal/format_bytes with storage mcpaint:calc internal.util.format_bytes