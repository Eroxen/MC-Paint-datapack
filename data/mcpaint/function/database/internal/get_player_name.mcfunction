$data modify entity @s Owner set value $(UUID)
data remove storage eroxified2:api entity.player.get_name
execute on origin run function eroxified2:entity/api/player/get_name
$execute if data storage eroxified2:api entity.player.get_name run data modify storage mcpaint:database authors[{sUUID:"$(UUID)"}].name set from storage eroxified2:api entity.player.get_name
kill @s