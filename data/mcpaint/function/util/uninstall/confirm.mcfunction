clear @a *[minecraft:custom_data~{mcpaint:{}}]
execute as @e[type=item] if items entity @s contents *[minecraft:custom_data~{mcpaint:{}}] run kill @s

function #bs.hitbox:unload
function #bs.raycast:unload
data remove storage bs:ctx y
data remove storage bs:ctx _

data remove storage mcpaint:calc internal
data remove storage mcpaint:calc api
data remove storage mcpaint:calc temp
data remove storage mcpaint:calc macro

data remove storage mcpaint:database authors
data remove storage mcpaint:database lookup

scoreboard objectives remove mcpaint.calc
scoreboard objectives remove mcpaint.credits
scoreboard objectives remove mcpaint.reload
scoreboard objectives remove mcpaint.session
scoreboard objectives remove mcpaint.settings
scoreboard objectives remove mcpaint.ui.hover
scoreboard objectives remove mcpaint.ui.layer
scoreboard objectives remove mcpaint.ui.u1
scoreboard objectives remove mcpaint.ui.u2
scoreboard objectives remove mcpaint.ui.v1
scoreboard objectives remove mcpaint.ui.v2

kill @e[tag=mcpaint.entity]

function mcpaint:signature
function eroxified2:core/api/disable_signature

datapack disable "file/MC Paint git"

tellraw @a {"text":"[MC Paint] Uninstalled datapack. If you renamed the datapack file, make sure to disable it manually using /datapack disable.","color":"gold"}