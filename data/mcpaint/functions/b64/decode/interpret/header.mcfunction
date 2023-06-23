data modify storage mcpaint:calc b64.decode.header set value {first_6:{}}
data modify storage mcpaint:calc b64.decode.header.first_6.0 set from storage mcpaint:calc b64.decode.bytes[0]
data modify storage mcpaint:calc b64.decode.header.first_6.1 set from storage mcpaint:calc b64.decode.bytes[1]
data modify storage mcpaint:calc b64.decode.header.first_6.2 set from storage mcpaint:calc b64.decode.bytes[2]
data modify storage mcpaint:calc b64.decode.header.first_6.3 set from storage mcpaint:calc b64.decode.bytes[3]
data modify storage mcpaint:calc b64.decode.header.first_6.4 set from storage mcpaint:calc b64.decode.bytes[4]
data modify storage mcpaint:calc b64.decode.header.first_6.5 set from storage mcpaint:calc b64.decode.bytes[5]
### first 6 bytes: "MCPPF1"
execute store success storage mcpaint:calc b64.decode.header.first_6_valid byte 1 if data storage mcpaint:calc b64.decode.header.first_6{0:77,1:67,2:80,3:80,4:70,5:49}
data remove storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]

### next 4: dimensions
execute store result score byte mcpaint.calc run data get storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]
scoreboard players add byte mcpaint.calc 1
execute store result storage mcpaint:calc b64.decode.header.width_blocks int 1 run scoreboard players get byte mcpaint.calc
execute store result score byte mcpaint.calc run data get storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]
scoreboard players add byte mcpaint.calc 1
execute store result storage mcpaint:calc b64.decode.header.height_blocks int 1 run scoreboard players get byte mcpaint.calc
execute store result score byte mcpaint.calc run data get storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]
scoreboard players add byte mcpaint.calc 1
execute store result storage mcpaint:calc b64.decode.header.width_px int 1 run scoreboard players get byte mcpaint.calc
execute store result score byte mcpaint.calc run data get storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]
scoreboard players add byte mcpaint.calc 1
execute store result storage mcpaint:calc b64.decode.header.height_px int 1 run scoreboard players get byte mcpaint.calc

### next: title length (bytes), then: title
execute store result score i mcpaint.calc run data get storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]
data modify storage mcpaint:calc b64.decode.header.array set value []
execute if score i mcpaint.calc matches 1.. run function mcpaint:b64/decode/interpret/header_loop
data modify storage mcpaint:calc b64.decode.header.title set from storage mcpaint:calc b64.decode.header.array

### next: author length (bytes), then: author
execute store result score i mcpaint.calc run data get storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]
data modify storage mcpaint:calc b64.decode.header.array set value []
execute if score i mcpaint.calc matches 1.. run function mcpaint:b64/decode/interpret/header_loop
data modify storage mcpaint:calc b64.decode.header.author set from storage mcpaint:calc b64.decode.header.array