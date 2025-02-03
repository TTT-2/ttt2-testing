local material = Material("vgui/ttt/vskin/icon_hattable_yes")

concommand.Add("vgui_panels", function()
    -- stored in GAMEMODE to be hotreload safe
    local frame = GAMEMODE.testing_vgui_panels

    if IsValid(frame) then
        frame:Close()
    else
        frame = vguihandler.GenerateFrame(950, 500, "vgui_panels")

        GAMEMODE.testing_vgui_panels = frame

        local layout = vgui.Create("DIconLayout", frame)
        layout:Dock(FILL)
        layout:SetSpaceX(10)
        layout:SetSpaceY(10)

        local box1 = layout:Add("TTT2:DPanel")
        box1:SetSize(300, 50)
            :SetText("testing text")
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(1)
            :EnableCornerRadius(true)

        local box2 = layout:Add("TTT2:DPanel")
        box2:SetSize(300, 50)
            :SetText("testing text")
            :SetTextAlign(TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(1)
            :EnableCornerRadius(true)

        local box3 = layout:Add("TTT2:DPanel")
        box3:SetSize(300, 50)
            :SetText("testing text")
            :SetTextAlign(TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP)
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(1)
            :EnableCornerRadius(true)

        local box4 = layout:Add("TTT2:DPanel")
        box4:SetSize(300, 50)
            :SetText(
                "testing text that is way too long to fit here and should be automatically shortened"
            )
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(1)

        local box5 = layout:Add("TTT2:DPanel")
        box5:SetSize(300, 50)
            :SetText("testing text")
            :SetTextAlign(TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(1)

        local box6 = layout:Add("TTT2:DPanel")
        box6:SetSize(300, 50)
            :SetText("testing text")
            :SetTextAlign(TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(1)

        local box7 = layout:Add("TTT2:DPanel")
        box7:SetSize(300, 50)
            :SetText("testing text")
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM)
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(1)
            :SetColor(COLOR_RED)

        local box8 = layout:Add("TTT2:DPanel")
        box8:SetSize(300, 50)
            :SetText("testing text")
            :SetTextAlign(TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM)
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(1)
            :SetColor(COLOR_BLACK)

        local box9 = layout:Add("TTT2:DPanel")
        box9:SetSize(300, 50)
            :SetText("testing text")
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM)
            :SetIcon(material, DRAW_SHADOW_ENABLED, DRAW_ICON_SIMPLE, 30)
            :SetOutline(1, 1, 1, 4)
            :EnableCornerRadius(true)
            :SetColor(COLOR_BLUE)
            :SetOutlineColor(COLOR_RED)
    end
end)
