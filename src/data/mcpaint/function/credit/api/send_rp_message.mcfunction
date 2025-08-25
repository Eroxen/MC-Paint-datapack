from mcpaint:utils import add_internal_translation

current_ver = ctx.project_version
message = [
  "",
  {"text":"[MC Paint]","color":"light_purple"},{"text":" "},

  {"translate":add_internal_translation("mcpaint.format.rp_missing", ""),"with":[
    {"text":"download page","color":"green","underlined":true,"hover_event":{"action":"show_text","value":[{"text":"modrinth.com"}]},"click_event":{"action":"open_url","url":"https://modrinth.com/datapack/mc-paint/version/latest"}}
  ],"fallback":"The resource pack is not installed! Please go to the %s to download and install it!","color":"red","bold":false},

  {"translate":add_internal_translation("mcpaint.format.rp_present", "%s"),"with":[
    {"translate":add_internal_translation(f"mcpaint.format.rp_present.{current_ver}", "%1$s"),"with":[
      {"translate":"mcpaint.format.rp_version", "with":[
        {"text":current_ver},
        {"translate":"mcpaint.message.resource_pack_reload","color":"aqua","underlined":true,"hover_event":{"action":"show_text","value":[{"translate":"mcpaint.message.resource_pack_reload.info"}]},"click_event":{"action":"run_command","command":"/trigger mcpaint.reload"}},
        {"translate":"mcpaint.message.resource_pack_dismiss","color":"aqua","underlined":true,"hover_event":{"action":"show_text","value":[{"translate":"mcpaint.message.resource_pack_dismiss.info"}]},"click_event":{"action":"run_command","command":"/trigger mcpaint.settings"}}
      ]},
      {"text":"download page","color":"green","underlined":true,"hover_event":{"action":"show_text","value":[{"text":"modrinth.com"}]},"click_event":{"action":"open_url","url":"https://modrinth.com/datapack/mc-paint/versions"}}
    ],"fallback":f"§cYou have installed a version of the Resource Pack that does not match with the Datapack version ({current_ver}). You can download the correct version from the %2$s.","color":"green","bold":false}
  ],"fallback":""}
]

tellraw @s message