
$data modify storage mcpaint:calc internal.studio.temp.additional_transform set value {key:"$(key)",relative:$(relative)}
data modify storage mcpaint:calc internal.studio.temp.additional_transform.transform set from storage mcpaint:calc internal.studio.ui.spawn.transformation

execute if data storage mcpaint:calc internal.studio.temp.additional_transform.relative.translation run function mcpaint:studio/internal/ui/spawn_element/additional_transform/translation

$data modify storage mcpaint:calc internal.studio.ui.spawn.$(key) set from storage mcpaint:calc internal.studio.temp.additional_transform.transform