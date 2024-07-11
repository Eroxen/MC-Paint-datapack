#####################################################################
# database/api/create_backup.mcfunction
# written by Eroxen
#
# Creates a backup of the database.
#####################################################################

$data modify storage mcpaint_backup:database backups."$(name)" set from storage mcpaint:database authors
$execute store result storage mcpaint_backup:database index[{name:"$(name)"}].created int 1 run time query gametime
$execute if data storage mcpaint_backup:database backups."$(name)"[0] run tellraw @s {"text":"Backup created."}
$execute unless data storage mcpaint_backup:database backups."$(name)"[0] run tellraw @s {"text":"Something went wrong."}