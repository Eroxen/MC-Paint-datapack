# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2025 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

execute unless data storage bs:data load.bundle run data modify storage bs:data load.bundle set value { \
  link: "https://api.mcbookshelf.dev/download?version=3.1.0,modules=", \
  message: {text:"[bundle]",click_event:{action:"open_url"},hover_event:{action:"show_text",value:"Click to open URL"}}, \
}

$data modify storage bs:data load.bundle._module set value "$(module)"
$execute store result storage bs:data load.bundle._major int 1 run scoreboard players get $$(module).major load.status
$execute store result storage bs:data load.bundle._minor int 1 run scoreboard players get $$(module).minor load.status
$execute store result storage bs:data load.bundle._patch int 1 run scoreboard players get $$(module).patch load.status
function bs.load:v3.1.0/bundle/concat with storage bs:data load.bundle

data modify storage bs:data load.bundle.message.click_event.url set string storage bs:data load.bundle.link 0 -1
