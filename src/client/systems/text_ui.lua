--[[
----------------------------------------
RIG Interactions (built for RIG-FiveM)

Author: Case (https://caseirl.dev)
Repo: https://github.com/rig-fivem/rig_interactions
License: https://github.com/rig-fivem/rig_interactions/blob/main/LICENSE
----------------------------------------
]]

--- @script text_ui
--- @file src/server/systems/text_ui.lua
--- @description Text UI display with image support

--- @section Functions

local function update_text_ui(data)
    SendNUIMessage({
        func = "update_text_ui",
        payload = data
    })
end

local function update_text_ui_quantity(amount)
    SendNUIMessage({
        func = "update_text_ui_quantity",
        payload = { amount = amount }
    })
end

local function clear_text_ui()
    SendNUIMessage({ func = "clear_text_ui" })
end

local function destroy_text_ui()
    SendNUIMessage({ func = "destroy_text_ui" })
end

--- @section Events

RegisterNetEvent("rig_interactions:client:update_text_ui", function(data)
    if not data then return print("data missing") end
    update_text_ui(data)
end)

RegisterNetEvent("rig_interactions:client:update_text_ui_quantity", function(amount)
    if not amount then return print("amount missing") end
    update_text_ui_quantity(amount)
end)

RegisterNetEvent("rig_interactions:client:clear_text_ui", function()
    clear_text_ui()
end)

RegisterNetEvent("rig_interactions:client:destroy_text_ui", function()
    destroy_text_ui()
end)

--- @section Exports

exports("update_text_ui", update_text_ui)
exports("update_text_ui_quantity", update_text_ui_quantity)
exports("clear_text_ui", clear_text_ui)
exports("destroy_text_ui", destroy_text_ui)

--- @section Test Commands

RegisterCommand("test_text_ui", function()
    print("testing text_ui")
    update_text_ui({
        image = "/ui/assets/images/RIG256.png",
        label = "Test Text UI",
        action_text = "Press F to do a thing"
    })
end)

RegisterCommand("test_text_ui_update", function()
    update_text_ui_quantity(2)
end)

RegisterCommand("test_text_ui_clear", function()
    clear_text_ui()
end)

RegisterCommand("test_text_ui_destroy", function()
    destroy_text_ui()
end)