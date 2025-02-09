local material = Material("vgui/ttt/vskin/icon_hattable_yes")

concommand.Add("vgui_panels_stretch_v", function()
    -- stored in GAMEMODE to be hotreload safe
    local frame = GAMEMODE.testing_vgui_panels_stretch_v

    if IsValid(frame) then
        frame:Close()
    else
        frame = vguihandler.GenerateFrame(950, 1020, "vgui_panels_stretch_v")

        GAMEMODE.testing_vgui_panels_stretch_v = frame

        local layout = vgui.Create("DIconLayout", frame)
        layout:Dock(FILL)
        layout:SetSpaceX(10)
        layout:SetSpaceY(10)

        local box1 = layout:Add("TTT2:DPanel")
        box1:SetSize(300, 50)
            :SetText(
                "1 (top) testing text that is way too long to fit here and should extend the horizontal size of this panel"
            )
            :SetFont("DermaTTT2Button")
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :EnableCornerRadius(true)
            :SetFitToContentX(true)
            :SetVerticalAlign(true)

        local box2 = layout:Add("TTT2:DPanel")
        box2:SetSize(300, 50)
            :SetText(
                "2 (center) testing text that is way too long to fit here and should extend the horizontal size of this panel"
            )
            :SetFont("DermaTTT2Button")
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :EnableCornerRadius(true)
            :SetFitToContentX(true)
            :SetVerticalAlign(true)

        local box3 = layout:Add("TTT2:DPanel")
        box3:SetSize(300, 50)
            :SetText(
                "3 (bottom) testing text that is way too long to fit here and should extend the horizontal size of this panel"
            )
            :SetFont("DermaTTT2Button")
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :EnableCornerRadius(true)
            :SetFitToContentX(true)
            :SetVerticalAlign(true)

        local box4 = layout:Add("TTT2:DPanel")
        box4:SetSize(200, 50)
            :SetText(
                "4 testing text that is way too long to fit here and should extend the size of this panel"
            )
            :SetFont("DermaTTT2Button")
            :SetDescription(
                "(align: left, top) This is the description of the panel. It should automatically word wrap and extend the size of the panel until everything fits. Let's hope it works!"
            )
            :SetPadding(10)
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :SetOutlineColor(COLOR_GREEN)
            :SetFitToContentY(true)
            :SetVerticalAlign(true)

        local box5 = layout:Add("TTT2:DPanel")
        box5:SetSize(200, 50)
            :SetText(
                "5 testing text that is way too long to fit here and should extend the size of this panel"
            )
            :SetFont("DermaTTT2Button")
            :SetDescription(
                "(align: left, center) This is the description of the panel. It should automatically word wrap and extend the size of the panel until everything fits. Let's hope it works!"
            )
            :SetPadding(10)
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :SetOutlineColor(COLOR_GREEN)
            :SetFitToContentY(true)
            :SetVerticalAlign(true)

        local box6 = layout:Add("TTT2:DPanel")
        box6:SetSize(200, 50)
            :SetText(
                "6 testing text that is way too long to fit here and should extend the size of this panel"
            )
            :SetFont("DermaTTT2Button")
            :SetDescription(
                "(align: right, bottom) This is the description of the panel. It should automatically word wrap and extend the size of the panel until everything fits. Let's hope it works!"
            )
            :SetPadding(10)
            :SetTextAlign(TEXT_ALIGN_RIGHT, TEXT_ALIGN_BOTTOM)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :SetOutlineColor(COLOR_GREEN)
            :SetFitToContentY(true)
            :SetVerticalAlign(true)

        local box7 = layout:Add("TTT2:DPanel")
        box7:SetSize(200, 50)
            :SetText(
                "7 testing text that is way too long to fit here and should extend the size of this panel"
            )
            :SetFont("DermaTTT2Button")
            :SetDescription(
                "(align: right, bottom + hor stretch) This is the description of the panel. It should automatically word wrap and extend the size of the panel until everything fits. Let's hope it works!"
            )
            :SetPadding(10)
            :SetTextAlign(TEXT_ALIGN_RIGHT, TEXT_ALIGN_BOTTOM)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :SetOutlineColor(COLOR_BLUE)
            :SetFitToContentX(true)
            :SetFitToContentY(true)
            :SetVerticalAlign(true)

        local box8 = layout:Add("TTT2:DPanel")
        box8:SetSize(200, 175)
            :SetText(
                "8 testing text that is way too long to fit here and should extend the size of this panel"
            )
            :SetFont("DermaTTT2Button")
            :SetDescription(
                "(align: right, bottom + hor stretch, fixed height) This is the description of the panel. It should automatically word wrap and extend the size of the panel until everything fits. Let's hope it works!"
            )
            :SetPadding(10)
            :SetTextAlign(TEXT_ALIGN_RIGHT, TEXT_ALIGN_BOTTOM)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :SetOutlineColor(COLOR_RED)
            :SetFitToContentX(true)
            :SetVerticalAlign(true)

        local box9 = layout:Add("TTT2:DPanel")
        box9:SetSize(200, 175)
            :SetText(
                "9 testing text that is way too long to fit here and should extend the size of this panel"
            )
            :SetFont("DermaTTT2Button")
            :SetDescription(
                "(align: center, center + hor stretch, fixed height) This is the description of the panel. It should automatically word wrap and extend the size of the panel until everything fits. Let's hope it works!"
            )
            :SetPadding(10)
            :SetTextAlign(TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            :SetIcon(material, true, true, 30)
            :SetOutline(1)
            :SetOutlineColor(COLOR_RED)
            :SetFitToContentX(true)
            :SetVerticalAlign(true)

        local box10 = layout:Add("TTT2:DPanel")
        box10
            :SetSize(200, 175)
            :SetText(
                "10 testing text that is way too long to fit here and should extend the size of this panel"
            )
            :SetFont("DermaTTT2Button")
            :SetDescription(
                "(align: left, top + hor stretch, fixed height, bigger icon) This is the description of the panel. It should automatically word wrap and extend the size of the panel until everything fits. Let's hope it works!"
            )
            :SetPadding(10)
            :SetTextAlign(TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
            :SetIcon(material, true, true, 75)
            :SetOutline(1)
            :SetOutlineColor(COLOR_RED)
            :SetFitToContentX(true)
            :SetVerticalAlign(true)
    end
end)
