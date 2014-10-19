------------------------------------------------------------------------
-- Setting up the local scope
------------------------------------------------------------------------
local _, Talkative2 = ...

------------------------------------------------------------------------
-- Editbox
------------------------------------------------------------------------
function Talkative2.skin(index)
  local frame = _G['ChatFrame' .. index]
  frame:SetFont(STANDARD_TEXT_FONT, 12, nil)
  frame:SetShadowOffset(1, -1)
  frame:SetClampRectInsets(0, 0, 0, 0)
  frame:SetSpacing(1.4)

  local editbox = _G['ChatFrame' .. index .. 'EditBox']
  editbox:ClearAllPoints()
  editbox:SetPoint('BOTTOMRIGHT', frame, 'TOPRIGHT', 0, 5)
  editbox:SetPoint('BOTTOMLEFT', frame, 'TOPLEFT', 0, 5)
  editbox:SetFont(STANDARD_TEXT_FONT, 12, nil)
  editbox:SetShadowOffset(1,-1)

  editbox.focusLeft:SetTexture(nil)
  editbox.focusMid:SetTexture(nil)
  editbox.focusRight:SetTexture(nil)

  editbox.header:ClearAllPoints()
  editbox.header:SetPoint('LEFT')
  editbox.header:SetFont(STANDARD_TEXT_FONT, 12, nil)
  editbox.header:SetShadowOffset(1, -1)

  local orig = editbox.SetTextInsets
  editbox.SetTextInsets = function(self)
    orig(self, self.header:GetWidth(), 0, 0, 0)
  end

  _G['ChatFrame' .. index .. 'ButtonFrame']:Hide()
  _G['ChatFrame' .. index .. 'EditBoxLeft']:SetTexture(nil)
  _G['ChatFrame' .. index .. 'EditBoxMid']:SetTexture(nil)
  _G['ChatFrame' .. index .. 'EditBoxRight']:SetTexture(nil)

  _G['ChatFrame' .. index .. 'Tab']:SetScript('OnDragStart', nil)
end


for index = 1, NUM_CHAT_WINDOWS do
  if(index ~= 2) then
    Talkative2.skin(index)

    _G['ChatFrame' .. index .. 'Tab']:RegisterForClicks('LeftButtonUp', 'RightButtonUp')
  end
end