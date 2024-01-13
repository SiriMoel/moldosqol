dofile_once("mods/moldosqol/files/utils.lua")

local gusgui = dofile_once("mods/moldosqol/lib/gusgui/Gui.lua")
local Gui = gusgui.Create()

Gui.state.MQOLmenuopen = true;
function OnWorldPreUpdate()

end

function OnWorldPostUpdate()
    if EntityGetWithTag("player_unit")[1] ~= nil then
        Gui:Render()
    end
end

--[[
FEATURES
- spells spawning
- teleporting
- boss spawning
- flask/pouch spawning
- item spawning
- gold editing
- health editing
- souls spawning (if tales is enabled)
]]

Gui:AddElement(gusgui.Elements.VLayout({
    id = "openandclosebutton",
    horizontalAlign = 0.5,
    verticalAlign = 0.5,
    overrideWidth = Gui:ScreenWidth(),
    overrideHeight = Gui:ScreenHeight(),
    overrideZ  = 100000000,
    hidden = false,
    children = {
        gusgui.Elements.Button({
            id = "button",
            margin = { top = 1, left = 1, },
            overrideZ  = 100000000,
            hidden = false,
            value = "[MOLDOSQOL]",
            onClick = function()
                Gui.state.MQOLmenuopen = not Gui.state.MQOLmenuopen
            end,
        })
    },
}))

Gui:AddElement(gusgui.Elements.VLayout({
    id = "moldosqol",
    horizontalAlign = 0.5,
    verticalAlign = 0.5,
    overrideWidth = Gui:ScreenWidth(),
    overrideHeight = Gui:ScreenHeight(),
    overrideZ  = 100000000,
    hidden = Gui:StateValue("MQOLmenuopen"),
    children = {
        gusgui.Elements.VLayout({
            id = "aaa",
            horizontalAlign = 0.5,
            verticalAlign = 0.5,
            hidden = false,
            children = {
                gusgui.Elements.text({
                    id = "test",
                    value = "hi",
                    hidden = false,
                }),

            },
        })
    },
}))