local material = Material("vgui/ttt/vskin/icon_hattable_yes")

concommand.Add("vgui_panels_stretch", function()
    -- stored in GAMEMODE to be hotreload safe
    local frame = GAMEMODE.testing_vgui_panels_stretch

    if IsValid(frame) then
        frame:Close()
    else
        frame = vguihandler.GenerateFrame(950, 500, "vgui_panels_stretch")

        GAMEMODE.testing_vgui_panels_stretch = frame

        local layout = vgui.Create("DIconLayout", frame)
        layout:Dock(FILL)
        layout:SetSpaceX(10)
        layout:SetSpaceY(10)

        local box1 = layout:Add("TTT2:DPanel")
        box1:SetSize(300, 50)
            :SetText(
                "testing text that is way too long to fit here and should extend the size of this panel"
            )
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :EnableCornerRadius(true)
            :SetFitToContentX(true)

        local box2 = layout:Add("TTT2:DPanel")
        box2:SetSize(200, 50)
            :SetText(
                "testing text that is way too long to fit here and should extend the size of this panel"
            )
            :SetDescription(
                "This is the description of the panel. It should automatically word wrap and extend the size of the panel until everything fits. Let's hope it works!"
            )
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :SetOutlineColor(COLOR_GREEN)
            :SetFitToContentY(true)
    end
end)
