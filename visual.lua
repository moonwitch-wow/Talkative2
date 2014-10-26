------------------------------------------------------------------------
-- Setting up the local scope
------------------------------------------------------------------------
local _, Talkative2 = ...

local frames = Talkative2.frames

------------------------------------------------------------------------
-- Editbox
------------------------------------------------------------------------
function Talkative2.skin(frame)
  if frames[frame] then return end
  _G[frame:GetName() .. "ButtonFrame"]:Hide()
  _G[frame:GetName() .. "EditBoxLeft"]:SetTexture(nil)
  _G[frame:GetName() .. "EditBoxMid"]:SetTexture(nil)
  _G[frame:GetName() .. "EditBoxRight"]:SetTexture(nil)

  frame:SetFont(STANDARD_TEXT_FONT, 12, nil)
  frame:SetShadowOffset(1, -1)
  frame:SetSpacing(1.4)
  FCF_SetChatWindowFontSize(nil, frame, 13) -- Change the chat frame font
  frame:SetClampedToScreen(false) -- allows moving to edge of screen
  frame:SetClampRectInsets(0,0,0,0) -- allows moving to edge of screen

  FCF_SetWindowAlpha(_G[frame:GetName()], .1)
  FCF_SetLocked(_G[frame:GetName()], 1)

  local editbox = _G[frame:GetName() .. "EditBox"]
  editbox:SetAltArrowKeyMode(false)
  editbox:ClearAllPoints()
  editbox:SetPoint('BOTTOMRIGHT', ChatFrame1, 'TOPRIGHT', 0, 20)
  editbox:SetPoint('BOTTOMLEFT', ChatFrame1, 'TOPLEFT', 0, 20)
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
  frames[frame] = true
end

for i = 1, NUM_CHAT_WINDOWS do
  Talkative2.skin(_G["ChatFrame" .. i])
end

------------------------------------------------------------------------
--skin temporary chats - do NOT show pet combat log
------------------------------------------------------------------------
local open = FCF_OpenTemporaryWindow
function FCF_OpenTemporaryWindow(chatType, ...)
   if chatType == "PET_BATTLE_COMBAT_LOG" then
      return
   end
   local frame = open(chatType, ...)
    Talkative2.skin(frame)
    Talkative2.Tabify(frame)
   return frame
end
