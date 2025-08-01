#####################################################################
# canvas/decoder/api/init.mcfunction
# written by Eroxen
#
# Initialises the canvas base64 decoder.
#
# Storage input:
# - mcpaint:calc api.canvas.decoder.input: list<string> list of base64 encoded strings
#
# Scoreboard output:
# - #canvas.b64.error mcpaint.calc: 1 if an error occured, 0 otherwise
#####################################################################

scoreboard players set #canvas.b64.error mcpaint.calc 0

data modify storage eroxified2:api math.b64.decoder.input set from storage mcpaint:calc api.canvas.decoder.input
function eroxified2:math.b64/api/decoder/init

# header: "MCPPF1"
data modify storage mcpaint:calc internal.canvas.decoder set value {finished:0b,phase:"b64",b64_decoder:{},canvas:{colour_array:[[]],resolved_rows:{0:''},resolved_text:''},steps:{b64:{},text:{row:0}}}
function eroxified2:math.b64/api/decoder/read_byte
execute unless score math.b64.decoder.byte eroxified2.api matches 77 run return run function mcpaint:canvas/decoder/internal/fail {error:"invalid_header"}
function eroxified2:math.b64/api/decoder/read_byte
execute unless score math.b64.decoder.byte eroxified2.api matches 67 run return run function mcpaint:canvas/decoder/internal/fail {error:"invalid_header"}
function eroxified2:math.b64/api/decoder/read_byte
execute unless score math.b64.decoder.byte eroxified2.api matches 80 run return run function mcpaint:canvas/decoder/internal/fail {error:"invalid_header"}
function eroxified2:math.b64/api/decoder/read_byte
execute unless score math.b64.decoder.byte eroxified2.api matches 80 run return run function mcpaint:canvas/decoder/internal/fail {error:"invalid_header"}
function eroxified2:math.b64/api/decoder/read_byte
execute unless score math.b64.decoder.byte eroxified2.api matches 70 run return run function mcpaint:canvas/decoder/internal/fail {error:"invalid_header"}
function eroxified2:math.b64/api/decoder/read_byte
execute unless score math.b64.decoder.byte eroxified2.api matches 49 run return run function mcpaint:canvas/decoder/internal/fail {error:"invalid_header"}

# dimensions
function eroxified2:math.b64/api/decoder/read_byte
scoreboard players add math.b64.decoder.byte eroxified2.api 1
execute unless score math.b64.decoder.byte eroxified2.api matches 1..4 run return run function mcpaint:canvas/decoder/internal/fail {error:"invalid_size"}
scoreboard players operation #canvas.decoder.width_blocks mcpaint.calc = math.b64.decoder.byte eroxified2.api
function eroxified2:math.b64/api/decoder/read_byte
scoreboard players add math.b64.decoder.byte eroxified2.api 1
execute unless score math.b64.decoder.byte eroxified2.api matches 1..4 run return run function mcpaint:canvas/decoder/internal/fail {error:"invalid_size"}
scoreboard players operation #canvas.decoder.height_blocks mcpaint.calc = math.b64.decoder.byte eroxified2.api
function eroxified2:math.b64/api/decoder/read_byte
scoreboard players add math.b64.decoder.byte eroxified2.api 1
execute unless score math.b64.decoder.byte eroxified2.api matches 1..64 run return run function mcpaint:canvas/decoder/internal/fail {error:"invalid_size"}
scoreboard players operation #canvas.decoder.width_px mcpaint.calc = math.b64.decoder.byte eroxified2.api
function eroxified2:math.b64/api/decoder/read_byte
scoreboard players add math.b64.decoder.byte eroxified2.api 1
execute unless score math.b64.decoder.byte eroxified2.api matches 1..64 run return run function mcpaint:canvas/decoder/internal/fail {error:"invalid_size"}
scoreboard players operation #canvas.decoder.height_px mcpaint.calc = math.b64.decoder.byte eroxified2.api

# title & author (not implemented, 0 as placeholder)
function eroxified2:math.b64/api/decoder/read_byte
execute unless score math.b64.decoder.byte eroxified2.api matches 0 run return run function mcpaint:canvas/decoder/internal/fail {error:"expected_zero"}
function eroxified2:math.b64/api/decoder/read_byte
execute unless score math.b64.decoder.byte eroxified2.api matches 0 run return run function mcpaint:canvas/decoder/internal/fail {error:"expected_zero"}

scoreboard players operation #canvas.b64.rows_per_step mcpaint.calc = #canvas.b64.pixels_per_step mcpaint.calc
scoreboard players operation #canvas.b64.rows_per_step mcpaint.calc /= #canvas.decoder.width_px mcpaint.calc

scoreboard players operation #canvas.decoder.total_steps mcpaint.calc = #canvas.decoder.height_px mcpaint.calc
scoreboard players operation #canvas.decoder.total_steps mcpaint.calc += #canvas.b64.rows_per_step mcpaint.calc
scoreboard players remove #canvas.decoder.total_steps mcpaint.calc 1
scoreboard players operation #canvas.decoder.total_steps mcpaint.calc /= #canvas.b64.rows_per_step mcpaint.calc

function eroxified2:math.b64/api/decoder/get_buffer_size
scoreboard players operation #canvas.temp mcpaint.calc = math.b64.decoder.buffer_size eroxified2.api
scoreboard players operation #canvas.temp mcpaint.calc += #canvas.b64.bytes_per_step mcpaint.calc
scoreboard players remove #canvas.temp mcpaint.calc 1
scoreboard players operation #canvas.temp mcpaint.calc /= #canvas.b64.bytes_per_step mcpaint.calc
scoreboard players operation #canvas.decoder.total_steps mcpaint.calc += #canvas.temp mcpaint.calc

scoreboard players set #canvas.decoder.row_length mcpaint.calc 0
scoreboard players operation #canvas.decoder.rows_left mcpaint.calc = #canvas.decoder.height_px mcpaint.calc
scoreboard players set #canvas.decoder.row mcpaint.calc 0

#tellraw @a {"score":{"name":"#canvas.decoder.total_steps","objective": "mcpaint.calc"},"color":"green"}

function eroxified2:math.b64/api/decoder/save_state
data modify storage mcpaint:calc internal.canvas.decoder.b64_decoder set from storage eroxified2:api math.b64.decoder.state
execute store result storage mcpaint:calc internal.canvas.decoder.canvas.width_blocks int 1 run scoreboard players get #canvas.decoder.width_blocks mcpaint.calc
execute store result storage mcpaint:calc internal.canvas.decoder.canvas.height_blocks int 1 run scoreboard players get #canvas.decoder.height_blocks mcpaint.calc
execute store result storage mcpaint:calc internal.canvas.decoder.canvas.width_px int 1 run scoreboard players get #canvas.decoder.width_px mcpaint.calc
execute store result storage mcpaint:calc internal.canvas.decoder.canvas.height_px int 1 run scoreboard players get #canvas.decoder.height_px mcpaint.calc
execute store result storage mcpaint:calc internal.canvas.decoder.steps.b64.row_length int 1 run scoreboard players get #canvas.decoder.row_length mcpaint.calc
execute store result storage mcpaint:calc internal.canvas.decoder.steps.b64.rows_left int 1 run scoreboard players get #canvas.decoder.rows_left mcpaint.calc
execute store result storage mcpaint:calc internal.canvas.decoder.steps.text.row int 1 run scoreboard players get #canvas.decoder.row mcpaint.calc
execute store result storage mcpaint:calc internal.canvas.decoder.steps.text.rows_per_step int 1 run scoreboard players get #canvas.decoder.rows_per_step mcpaint.calc