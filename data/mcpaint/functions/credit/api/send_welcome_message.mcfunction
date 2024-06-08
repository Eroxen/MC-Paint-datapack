execute if entity @s[tag=mcpaint.player.has_seen_welcome_message] run return fail
tag @s add mcpaint.player.has_seen_welcome_message

tellraw @s {"text":"　　　　　　　　　　　　　　　　　　　　　","color":"yellow","strikethrough": true}
tellraw @s {"translate":"mcpaint.message.welcome.description","color":"light_purple","with":[{"storage":"mcpaint:calc","nbt":"internal.credit.datapack_version"}],"fallback": "MC Paint %s by Eroxen"}
tellraw @s {"translate":"mcpaint.message.welcome.thanks","fallback":"Thank you for installing MC Paint!\nFor more information, news, feedback,\netc., check out the following links:"}
tellraw @s {"text":"→ Datapack Wiki","color":"gray","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"github.com"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Eroxen/MC-Paint-datapack/wiki"}}
tellraw @s {"text":"→ Support me on Ko-fi","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"ko-fi.com"}]},"clickEvent":{"action":"open_url","value":"https://ko-fi.com/eroxen"}}
tellraw @s {"text":"→ Modrinth","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"modrinth.com"}]},"clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/mc-paint"}}
tellraw @s {"text":"→ Planet Minecraft","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"planetminecraft.com"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/mc-paint-create-your-own-custom-paintings/"}}
tellraw @s {"text":"→ Discord","color":"blue","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"discord.gg"}]},"clickEvent":{"action":"open_url","value":"https://discord.gg/p6jh5j2fY3"}}
tellraw @s {"text":"　　　　　　　　　　　　　　　　　　　　　","color":"yellow","strikethrough": true}