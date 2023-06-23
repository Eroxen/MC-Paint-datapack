execute store result score byte mcpaint.calc run data get storage mcpaint:calc b64.encode.bytes[0] 1
execute if score byte mcpaint.calc matches 128.. run data modify storage mcpaint:calc b64.encode.bits append value 1
execute unless score byte mcpaint.calc matches 128.. run data modify storage mcpaint:calc b64.encode.bits append value 0
scoreboard players set op mcpaint.calc 128
scoreboard players operation byte mcpaint.calc %= op mcpaint.calc
execute if score byte mcpaint.calc matches 64.. run data modify storage mcpaint:calc b64.encode.bits append value 1
execute unless score byte mcpaint.calc matches 64.. run data modify storage mcpaint:calc b64.encode.bits append value 0
scoreboard players set op mcpaint.calc 64
scoreboard players operation byte mcpaint.calc %= op mcpaint.calc
execute if score byte mcpaint.calc matches 32.. run data modify storage mcpaint:calc b64.encode.bits append value 1
execute unless score byte mcpaint.calc matches 32.. run data modify storage mcpaint:calc b64.encode.bits append value 0
scoreboard players set op mcpaint.calc 32
scoreboard players operation byte mcpaint.calc %= op mcpaint.calc
execute if score byte mcpaint.calc matches 16.. run data modify storage mcpaint:calc b64.encode.bits append value 1
execute unless score byte mcpaint.calc matches 16.. run data modify storage mcpaint:calc b64.encode.bits append value 0
scoreboard players set op mcpaint.calc 16
scoreboard players operation byte mcpaint.calc %= op mcpaint.calc
execute if score byte mcpaint.calc matches 8.. run data modify storage mcpaint:calc b64.encode.bits append value 1
execute unless score byte mcpaint.calc matches 8.. run data modify storage mcpaint:calc b64.encode.bits append value 0
scoreboard players set op mcpaint.calc 8
scoreboard players operation byte mcpaint.calc %= op mcpaint.calc
execute if score byte mcpaint.calc matches 4.. run data modify storage mcpaint:calc b64.encode.bits append value 1
execute unless score byte mcpaint.calc matches 4.. run data modify storage mcpaint:calc b64.encode.bits append value 0
scoreboard players set op mcpaint.calc 4
scoreboard players operation byte mcpaint.calc %= op mcpaint.calc
execute if score byte mcpaint.calc matches 2.. run data modify storage mcpaint:calc b64.encode.bits append value 1
execute unless score byte mcpaint.calc matches 2.. run data modify storage mcpaint:calc b64.encode.bits append value 0
scoreboard players set op mcpaint.calc 2
scoreboard players operation byte mcpaint.calc %= op mcpaint.calc
execute if score byte mcpaint.calc matches 1.. run data modify storage mcpaint:calc b64.encode.bits append value 1
execute unless score byte mcpaint.calc matches 1.. run data modify storage mcpaint:calc b64.encode.bits append value 0

execute if data storage mcpaint:calc b64.encode.bits[5] run function mcpaint:b64/encode/bits_to_char
execute if data storage mcpaint:calc b64.encode.bits[5] run function mcpaint:b64/encode/bits_to_char

data remove storage mcpaint:calc b64.encode.bytes[0]
execute unless data storage mcpaint:calc b64.encode.bytes[0] if data storage mcpaint:calc b64.encode.bits[0] run function mcpaint:b64/encode/pad
execute if data storage mcpaint:calc b64.encode.bytes[0] run function mcpaint:b64/encode/bytes_to_chars_loop