data modify storage mcpaint:calc internal.studio.compare_uuid set from entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.filepath.author
execute store success score #studio.session.owned_by_another mcpaint.calc run data modify storage mcpaint:calc internal.studio.compare_uuid set from entity @s UUID

### allow access if the owner has the right settings ###
execute if score #studio.session.owned_by_another mcpaint.calc matches 1 run function mcpaint:settings/api/get_client_of_author with entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.filepath
execute if score #studio.session.owned_by_another mcpaint.calc matches 1 if data storage mcpaint:calc api.settings.client{protect_studio:0b} run scoreboard players set #studio.session.owned_by_another mcpaint.calc 0

execute if score #studio.session.owned_by_another mcpaint.calc matches 1 run function mcpaint:database/api/get_author_name with entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.filepath