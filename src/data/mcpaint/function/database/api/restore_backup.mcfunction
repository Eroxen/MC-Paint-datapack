#####################################################################
# database/api/restore_backup.mcfunction
# written by Eroxen
#
# Restores a backup of the database.
#####################################################################

$execute unless data storage mcpaint_backup:database backups."$(name)" run return run tellraw @s {"text":"Unknown name."}
$data modify storage mcpaint:database authors set from storage mcpaint_backup:database backups."$(name)"
tellraw @s {"text":"Restored."}