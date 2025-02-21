local material = Material("vgui/ttt/vskin/icon_hattable_yes")

concommand.Add("vgui_textentry", function()
    -- stored in GAMEMODE to be hotreload safe
    local frame = GAMEMODE.vgui_textentry

    if IsValid(frame) then
        frame:Close()
    else
        frame = vguihandler.GenerateFrame(950, 500, "vgui_textentry")

        GAMEMODE.vgui_textentry = frame

        local layout = vgui.Create("DIconLayout", frame)
        layout:Dock(FILL)
        layout:SetSpaceX(10)
        layout:SetSpaceY(10)

        local box1 = layout:Add("DTextEntryTTT2")
        box1:SetSize(300, 50)
        box1:SetUpdateOnType(false)
        box1:SetHeightMult(1)

        box1.OnGetFocus = function(slf)
            util.GetHighestPanelParent(slf):SetKeyboardInputEnabled(true)
        end

        box1.OnLoseFocus = function(slf)
            util.GetHighestPanelParent(slf):SetKeyboardInputEnabled(false)
        end

        -- Set default if possible even if the convar could still overwrite it
        box1:SetDefaultValue("sdfdsft")
    end
end)
