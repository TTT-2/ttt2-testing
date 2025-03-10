local material = Material("vgui/ttt/vskin/icon_hattable_yes")

concommand.Add("vgui_panels_more", function()
    -- stored in GAMEMODE to be hotreload safe
    local frame = GAMEMODE.testing_vgui_panels_more

    if IsValid(frame) then
        frame:Close()
    else
        frame = vguihandler.GenerateFrame(950, 500, "vgui_panels_more")

        GAMEMODE.testing_vgui_panels_more = frame

        local layout = vgui.Create("DIconLayout", frame)
        layout:Dock(FILL)
        layout:SetSpaceX(10)
        layout:SetSpaceY(10)

        local box1 = layout:Add("TTT2:DPanel")
        box1:SetSize(300, 150)
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
            :SetDescription(
                "(align: left, top + fixed size) This is the description of the panel. It should automatically word wrap. Since this panel has a fixed size, it should not change anything and only respect the text align. Let's hope it works!"
            )
            :SetPadding(10)
            :SetOutline(4, 0)
            :EnableCornerRadius(true)

        local box2 = layout:Add("TTT2:DPanel")
        box2:SetSize(300, 150)
            :SetTextAlign(TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            :SetDescription(
                "(align: center, center + fixed size) This is the description of the panel. It should automatically word wrap. Since this panel has a fixed size, it should not change anything and only respect the text align. Let's hope it works!"
            )
            :SetPadding(10)
            :SetOutline(4, 0)
            :EnableCornerRadius(true)

        local box3 = layout:Add("TTT2:DPanel")
        box3:SetSize(300, 150)
            :SetTextAlign(TEXT_ALIGN_RIGHT, TEXT_ALIGN_BOTTOM)
            :SetDescription(
                "(align: right, bottom + fixed size) This is the description of the panel. It should automatically word wrap. Since this panel has a fixed size, it should not change anything and only respect the text align. Let's hope it works!"
            )
            :SetPadding(10)
            :SetOutline(4, 0)
            :EnableCornerRadius(true)

        local box4 = layout:Add("TTT2:DPanel")
        box4:SetPadding(10)
            :SetTextAlign(TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :SetOutlineColor(COLOR_GREEN)
            :SetFitToContentX(true)
            :SetFitToContentY(true)

        local box5 = layout:Add("TTT2:DPanel")
        box5:SetPadding(20, 5)
            :SetTextAlign(TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :SetOutlineColor(COLOR_GREEN)
            :SetFitToContentX(true)
            :SetFitToContentY(true)

        local box6 = layout:Add("TTT2:DPanel")
        box6:SetPadding(20, 5, 0, 40)
            :SetTextAlign(TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :SetOutlineColor(COLOR_GREEN)
            :SetFitToContentX(true)
            :SetFitToContentY(true)
    end
end)
