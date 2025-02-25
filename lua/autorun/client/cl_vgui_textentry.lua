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

        local box1 = layout:Add("TTT2:DTextEntry")
        box1:SetSize(300, 50)
            :SetIcon(material, DRAW_SHADOW_DISABLED, DRAW_ICON_SIMPLE, 16)
            :RegisterAutoCompleteEntry("hello world!")
            :RegisterAutoCompleteEntry("hello borld!")

        local box2 = layout:Add("TTT2:DTextEntry")
        box2:SetSize(300, 50)
    end
end)
