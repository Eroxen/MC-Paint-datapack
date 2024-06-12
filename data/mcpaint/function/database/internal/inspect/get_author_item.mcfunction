$data modify storage mcpaint:calc internal.database.inspect.author.name set from storage mcpaint:database authors[$(i)].name
$data modify storage mcpaint:calc internal.database.inspect.author.UUID set from storage mcpaint:database authors[$(i)].UUID
$execute store result storage mcpaint:calc internal.database.inspect.author.works int 1 run data get storage mcpaint:database authors[$(i)].works