#####################################################################
# canvas/encoder/api/init.mcfunction
# written by Eroxen
#
# Initialises the canvas base64 encoder.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas to encode
#####################################################################

function eroxified2:math.b64/api/encoder/init

data modify storage mcpaint:calc internal.canvas.encoder set value {finished:0b,b64_encoder:{},pixel_queue:[],colour:-1,length:0}
function mcpaint:canvas/api/get_info

# header: "MCPPF1"
scoreboard players set math.b64.encoder.byte eroxified2.api 77
function eroxified2:math.b64/api/encoder/add_byte
scoreboard players set math.b64.encoder.byte eroxified2.api 67
function eroxified2:math.b64/api/encoder/add_byte
scoreboard players set math.b64.encoder.byte eroxified2.api 80
function eroxified2:math.b64/api/encoder/add_byte
scoreboard players set math.b64.encoder.byte eroxified2.api 80
function eroxified2:math.b64/api/encoder/add_byte
scoreboard players set math.b64.encoder.byte eroxified2.api 70
function eroxified2:math.b64/api/encoder/add_byte
scoreboard players set math.b64.encoder.byte eroxified2.api 49
function eroxified2:math.b64/api/encoder/add_byte

# dimensions
scoreboard players operation math.b64.encoder.byte eroxified2.api = #canvas.width_blocks mcpaint.calc
scoreboard players remove math.b64.encoder.byte eroxified2.api 1
function eroxified2:math.b64/api/encoder/add_byte
scoreboard players operation math.b64.encoder.byte eroxified2.api = #canvas.height_blocks mcpaint.calc
scoreboard players remove math.b64.encoder.byte eroxified2.api 1
function eroxified2:math.b64/api/encoder/add_byte
scoreboard players operation math.b64.encoder.byte eroxified2.api = #canvas.width_px mcpaint.calc
scoreboard players remove math.b64.encoder.byte eroxified2.api 1
function eroxified2:math.b64/api/encoder/add_byte
scoreboard players operation math.b64.encoder.byte eroxified2.api = #canvas.height_px mcpaint.calc
scoreboard players remove math.b64.encoder.byte eroxified2.api 1
function eroxified2:math.b64/api/encoder/add_byte

# title & author (not implemented, 0 as placeholder)
scoreboard players set math.b64.encoder.byte eroxified2.api 0
function eroxified2:math.b64/api/encoder/add_byte
function eroxified2:math.b64/api/encoder/add_byte

scoreboard players operation #canvas.encoder.total_steps mcpaint.calc = #canvas.height_px mcpaint.calc
scoreboard players operation #canvas.encoder.total_steps mcpaint.calc *= #canvas.width_px mcpaint.calc
scoreboard players operation #canvas.encoder.total_steps mcpaint.calc += #canvas.b64.pixels_per_step mcpaint.calc
scoreboard players remove #canvas.encoder.total_steps mcpaint.calc 1
scoreboard players operation #canvas.encoder.total_steps mcpaint.calc /= #canvas.b64.pixels_per_step mcpaint.calc

data modify storage mcpaint:calc internal.canvas.encoder.pixel_queue append from storage mcpaint:calc api.canvas.canvas.colour_array[][]
data modify storage mcpaint:calc internal.canvas.encoder.colour set from storage mcpaint:calc internal.canvas.encoder.pixel_queue[0]

function eroxified2:math.b64/api/encoder/save_state
data modify storage mcpaint:calc internal.canvas.encoder.b64_encoder set from storage eroxified2:api math.b64.encoder.state