execute if score screenspace_x mcpaint.calc matches 100..300 if score screenspace_y mcpaint.calc matches 660..900 as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/files/open

execute if score screenspace_x mcpaint.calc matches 400..600 if score screenspace_y mcpaint.calc matches 660..900 as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/import/open

execute if score screenspace_x mcpaint.calc matches 700..900 if score screenspace_y mcpaint.calc matches 660..900 run tellraw @s [{"text":"You can upload images to the "},{"text":"MC Paint Image Converter","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"eroxen.github.io"}]},"clickEvent":{"action":"open_url","value":"https://eroxen.github.io/MC-paint-image-convert/"}},{"text":"!"}]



execute if score screenspace_x mcpaint.calc matches 100..300 if score screenspace_y mcpaint.calc matches 360..600 run tellraw @s [{"text":"Share your creations or discuss on the official "},{"text":"Discord server","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"discord.gg"}]},"clickEvent":{"action":"open_url","value":"https://discord.gg/p6jh5j2fY3"}},{"text":"!"}]

execute if score screenspace_x mcpaint.calc matches 400..600 if score screenspace_y mcpaint.calc matches 360..600 run tellraw @s [{"text":"Check out this project's "},{"text":"Modrinth page","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"modrinth.com"}]},"clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/mc-paint"}},{"text":"!"}]

execute if score screenspace_x mcpaint.calc matches 700..900 if score screenspace_y mcpaint.calc matches 360..600 run tellraw @s [{"text":"Check out this project's "},{"text":"Planet Minecraft page","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"planetminecraft.com"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/mc-paint-create-your-own-custom-paintings/"}},{"text":"!"}]