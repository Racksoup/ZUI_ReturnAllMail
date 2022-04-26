local returnButton = CreateFrame("Button", nil, MailFrame, "UIPanelButtonTemplate")
returnButton:SetPoint("BOTTOM", 0, -50)
returnButton:SetWidth(100)
returnButton:SetHeight(20)
returnButton:SetText("Return All")
returnButton:SetScript("OnClick", function() myFunc() end)

function myFunc() 
    local inboxNumItems = GetInboxNumItems()
    if (inboxNumItems > 0) then
        MailItem1Button:Click()
        OpenMailDeleteButton:Click()
        C_Timer.After(0.1, function() myFunc() end)
    end
end
