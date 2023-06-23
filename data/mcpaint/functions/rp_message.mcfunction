tellraw @s [{"text":"[MC Paint] ","color":"red","bold":true},{"translate":"mcpaint.message.resource_pack_not_installed","with":[{"text":"download page","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"planetminecraft.com"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/mc-paint-create-your-own-custom-paintings/"}}],"fallback":"The resource pack is not installed! Please go to the %s to download and install it!","color":"red","bold":false},{"nbt":"version.rp_version_message","storage":"mcpaint:calc","interpret":true}]


tag @s remove mcpaint.player.message.rp
scoreboard players reset @s mcpaint.rp_message_delay