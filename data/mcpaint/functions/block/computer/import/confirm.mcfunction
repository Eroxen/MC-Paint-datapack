data modify storage mcpaint:calc filepath set value {}
data modify storage mcpaint:calc filepath.author set from storage mcpaint:calc interactor.UUID
data modify storage mcpaint:calc filepath.name set from entity @s data.computer_page.filename

function mcpaint:database/open_filepath
execute if data storage mcpaint:database search{found_work:1b} run function mcpaint:block/computer/popup/import_overwrite/open
execute if data storage mcpaint:database search{found_work:0b} run function mcpaint:block/computer/import/write_work