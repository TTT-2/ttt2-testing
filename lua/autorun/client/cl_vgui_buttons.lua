local material = Material("vgui/ttt/vskin/icon_hattable_yes")

concommand.Add("vgui_buttons", function()
    -- stored in GAMEMODE to be hotreload safe
    local frame = GAMEMODE.testing_vgui_buttons

    if IsValid(frame) then
        frame:Close()
    else
        frame = vguihandler.GenerateFrame(950, 500, "vgui_buttons")

        GAMEMODE.testing_vgui_buttons = frame

        local layout = vgui.Create("DIconLayout", frame)
        layout:Dock(FILL)
        layout:SetSpaceX(10)
        layout:SetSpaceY(10)

        local box1 = layout:Add("TTT2:DButton")
        box1:SetSize(300, 50)
            :SetText("testing text")
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(0, 0, 0, vskin.GetBorderSize())
            :SetKeyBinding("+menu_context")

        local box2 = layout:Add("TTT2:DButton")
        box2:SetSize(300, 50)
            :SetText("testing text")
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(1)

        local box3 = layout:Add("TTT2:DButton")
        box3:SetSize(300, 50)
            :SetText("testing text")
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)

        local box4 = layout:Add("TTT2:DButton")
        box4:SetSize(300, 50)
            :SetText(
                "testing text that is way too long to fit here and should be automatically shortened"
            )
            :SetOutline(0, 0, 0, vskin.GetBorderSize())
            :EnableCornerRadius(true)

        local box5 = layout:Add("TTT2:DButton")
        box5:SetSize(300, 50)
            :SetText("testing text")
            :SetOutline(1, 1, 1, vskin.GetBorderSize())
            :EnableCornerRadius(true)

        local box6 = layout:Add("TTT2:DButton")
        box6:SetSize(300, 50):SetText("testing text"):EnableCornerRadius(true)

        local box7 = layout:Add("TTT2:DButton")
        box7:SetSize(300, 50)
            :SetText("testing text")
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetEnabled(false)

        local box8 = layout:Add("TTT2:DButton")
        box8:SetSize(300, 50):SetText("testing text")

        local box9 = layout:Add("TTT2:DButton")
        box9:SetSize(300, 50)
            :SetText("testing text")
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(5, 0, 0, 0)
            :EnableCornerRadius(true)
            :SetColor(COLOR_BLUE)
            :SetOutlineColor(COLOR_RED)

        local box10 = layout:Add("TTT2:DButton")
        box10
            :SetSize(300, 50)
            :SetText("testing text")
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(0, 5, 0, 0)
            :EnableCornerRadius(true)
            :SetColor(COLOR_BLUE)
            :SetOutlineColor(COLOR_RED)

        local box11 = layout:Add("TTT2:DButton")
        box11
            :SetSize(300, 50)
            :SetText("testing text")
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(0, 0, 5, 0)
            :EnableCornerRadius(true)
            :SetColor(COLOR_BLUE)
            :SetOutlineColor(COLOR_RED)

        local box12 = layout:Add("TTT2:DButton")
        box12
            :SetSize(300, 50)
            :SetText("testing text")
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(0, 0, 0, 5)
            :EnableCornerRadius(true)
            :SetColor(COLOR_BLUE)
            :SetOutlineColor(COLOR_RED)

        local box13 = layout:Add("TTT2:DButton")
        box13
            :SetSize(300, 50)
            :SetText("testing text")
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(0, 0, 0, 5)
            :EnableCornerRadius(true)
            :SetColor(COLOR_WHITE)
            :SetOutlineColor(COLOR_RED)
    end
end)
