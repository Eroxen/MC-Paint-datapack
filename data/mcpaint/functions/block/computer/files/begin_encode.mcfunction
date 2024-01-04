data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:database search.work.canvas

function eroxified2:math.b64/api/encoder/init
function mcpaint:canvas/api/to_b64/mcppf1/header
function mcpaint:canvas/api/to_b64/mcppf1/canvas
scoreboard players set math.b64.encoder.split eroxified2.api 256
function eroxified2:math.b64/api/encoder/finish_split

data modify storage mcpaint:calc Item.tag.pages set from storage eroxified2:api math.b64.encoder.output
execute at @s positioned ^ ^ ^0.7 run function mcpaint:item/drop_motion