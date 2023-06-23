data modify storage mcpaint:calc b64.encode.bytes set value []

# header: "MCPPF1"
data modify storage mcpaint:calc b64.encode.bytes append value 77
data modify storage mcpaint:calc b64.encode.bytes append value 67
data modify storage mcpaint:calc b64.encode.bytes append value 80
data modify storage mcpaint:calc b64.encode.bytes append value 80
data modify storage mcpaint:calc b64.encode.bytes append value 70
data modify storage mcpaint:calc b64.encode.bytes append value 49

# dimensions
data modify storage mcpaint:calc b64.encode.bytes append value 0
execute store result score byte mcpaint.calc run data get storage mcpaint:calc b64.encode.canvas.width_blocks
scoreboard players remove byte mcpaint.calc 1
execute store result storage mcpaint:calc b64.encode.bytes[-1] int 1 run scoreboard players get byte mcpaint.calc
data modify storage mcpaint:calc b64.encode.bytes append value 0
execute store result score byte mcpaint.calc run data get storage mcpaint:calc b64.encode.canvas.height_blocks
scoreboard players remove byte mcpaint.calc 1
execute store result storage mcpaint:calc b64.encode.bytes[-1] int 1 run scoreboard players get byte mcpaint.calc
data modify storage mcpaint:calc b64.encode.bytes append value 0
execute store result score byte mcpaint.calc run data get storage mcpaint:calc b64.encode.canvas.width_px
scoreboard players remove byte mcpaint.calc 1
execute store result storage mcpaint:calc b64.encode.bytes[-1] int 1 run scoreboard players get byte mcpaint.calc
data modify storage mcpaint:calc b64.encode.bytes append value 0
execute store result score byte mcpaint.calc run data get storage mcpaint:calc b64.encode.canvas.height_px
scoreboard players remove byte mcpaint.calc 1
execute store result storage mcpaint:calc b64.encode.bytes[-1] int 1 run scoreboard players get byte mcpaint.calc

# title & author
data modify storage mcpaint:calc b64.encode.bytes append value 0
data modify storage mcpaint:calc b64.encode.bytes append value 0