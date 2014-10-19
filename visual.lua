------------------------------------------------------------------------
-- Setting up the local scope
------------------------------------------------------------------------
local _, Talkative2 = ...

------------------------------------------------------------------------
-- Editbox
------------------------------------------------------------------------
function Talkative2.skin(index)
  local frame = _G['ChatFrame' .. index]
  frame:SetFont(STANDARD_TEXT_FONT, 10, nil)
  frame:SetShadowOffset(1, -1)
  frame:SetSpacing(1.4)
  -- FCF_SetChatWindowFontSize(nil, frame, 13) -- Change the chat frame font
  frame:SetClampedToScreen(false) -- allows moving to edge of screen
  frame:SetClampRectInsets(0,0,0,0) -- allows moving to edge of screen

  FCF_SetWindowAlpha(frame, .1)
  FCF_SetLocked(frame, 1)

  local editbox = _G['ChatFrame' .. index .. 'EditBox']
  editbox:SetAltArrowKeyMode(false)

  editbox:ClearAllPoints()
  editbox:SetPoint('BOTTOMRIGHT', frame, 'TOPRIGHT', 0, 20)
  editbox:SetPoint('BOTTOMLEFT', frame, 'TOPLEFT', 0, 20)
  editbox:SetFont(STANDARD_TEXT_FONT, 13, nil)
  editbox:SetShadowOffset(1,-1)

  editbox.focusLeft:SetTexture(nil)
  editbox.focusMid:SetTexture(nil)
  editbox.focusRight:SetTexture(nil)

  editbox.header:ClearAllPoints()
  editbox.header:SetPoint('LEFT')
  editbox.header:SetFont(STANDARD_TEXT_FONT, 13, nil)
  editbox.header:SetShadowOffset(1, -1)

  local orig = editbox.SetTextInsets
  editbox.SetTextInsets = function(self)
    orig(self, self.header:GetWidth(), 0, 0, 0)
  end

  _G['ChatFrame' .. index .. 'ButtonFrame']:Hide()
  _G['ChatFrame' .. index .. 'EditBoxLeft']:SetTexture(nil)
  _G['ChatFrame' .. index .. 'EditBoxMid']:SetTexture(nil)
  _G['ChatFrame' .. index .. 'EditBoxRight']:SetTexture(nil)
end

for index = 1, NUM_CHAT_WINDOWS do
  if(index ~= 2) then
    Talkative2.skin(index)

    -- _G['ChatFrame' .. index .. 'Tab']:RegisterForClicks('LeftButtonUp', 'RightButtonUp')
  end
end

------------------------------------------------------------------------
--skin temporary chats
------------------------------------------------------------------------
hooksecurefunc("FCF_OpenTemporaryWindow", function()
  for _, chatFrameName in pairs(CHAT_FRAMES) do
    local frame = _G[chatFrameName]
    if (frame.isTemporary) then
      Talkative2.skin(index)
    end
  end
end)