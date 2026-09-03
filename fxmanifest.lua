--[[
----------------------------------------
RIG Interactions (built for RIG-FiveM)

Author: Case (https://caseirl.dev)
Repo: https://github.com/rig-fivem/rig_interactions
License: https://github.com/rig-fivem/rig_interactions/blob/main/LICENSE
----------------------------------------
]]

fx_version "cerulean"
games { "gta5" }
name "rig_interactions"
version "0.1.0"
description "Interaction system for RIG (FiveM)."
license "Apache 2.0"
author "Case"
lua54 "yes"

ui_page "ui/index.html"
files {
    "ui/**/*"
}

shared_script "init.lua"

client_scripts {
    "src/client/modules/*.lua",
    "src/client/systems/*.lua"

}