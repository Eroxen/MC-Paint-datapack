#####################################################################
# canvas/api/to_b64/mcppf1/header.mcfunction
# written by Eroxen
#
# Adds header information for the MCPPF1 format to the base64 encoder queue.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
#####################################################################

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