--[[
        Copyright (c) 2007-2010 Trond A Ekseth
        Copyright (c) 2010-2012 Adrian L Lange
        Copyright (c) 2013-2014 Kelly Crabbé

        Permission is hereby granted, free of charge, to any person
        obtaining a copy of this software and associated documentation
        files (the "Software"), to deal in the Software without
        restriction, including without limitation the rights to use,
        copy, modify, merge, publish, distribute, sublicense, and/or sell
        copies of the Software, and to permit persons to whom the
        Software is furnished to do so, subject to the following
        conditions:

        The above copyright notice and this permission notice shall be
        included in all copies or substantial portions of the Software.

        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
        EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
        OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
        NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
        HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
        WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
        FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
        OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Honestly, I can't beat how this is done... Well done folks

------------------------------------------------------------------------
-- Setup
------------------------------------------------------------------------
local _, Talkative2 = ...
local _G = _G

local frames = Talkative2.frames
------------------------------------------------------------------------
-- Enable tab flash, hide textures
------------------------------------------------------------------------
local function colorizeNow(self)
  if(self:IsMouseOver()) then
    self:GetFontString():SetTextColor(0, 0.6, 1)
    self:GetFontString():SetFont(STANDARD_TEXT_FONT, 10, nil)
  elseif(self.alerting) then
    self:GetFontString():SetTextColor(1, 0, 0)
  elseif(self:GetID() == SELECTED_CHAT_FRAME:GetID()) then
    self:GetFontString():SetTextColor(.7, 0, 1)
  else
    self:GetFontString():SetTextColor(0.8, 0.8, 0.8)
  end
end

local function loopOver(self)
  colorizeNow(_G[self:GetName()..'Tab'])
end

function Talkative2.Tabify(tab)
  tab:GetFontString():SetFont(STANDARD_TEXT_FONT, 10, nil)
  tab:GetFontString():SetShadowOffset(1, -1)

  tab.leftTexture:SetTexture(nil)
  tab.middleTexture:SetTexture(nil)
  tab.rightTexture:SetTexture(nil)

  tab.leftHighlightTexture:SetTexture(nil)
  tab.middleHighlightTexture:SetTexture(nil)
  tab.rightHighlightTexture:SetTexture(nil)

  tab.leftSelectedTexture:SetTexture(nil)
  tab.middleSelectedTexture:SetTexture(nil)
  tab.rightSelectedTexture:SetTexture(nil)

  tab.glow:SetTexture(nil)
  tab:SetAlpha(0)

  -- run it on login and on enter and on leave
  tab:HookScript('OnEnter', colorizeNow)
  tab:HookScript('OnLeave', colorizeNow)

  colorizeNow(tab)

  CHAT_FRAME_TAB_SELECTED_NOMOUSE_ALPHA = .8
  CHAT_FRAME_TAB_NORMAL_NOMOUSE_ALPHA = .8
  CHAT_FRAME_TAB_NORMAL_MOUSEOVER_ALPHA = 1

  hooksecurefunc('FCFTab_UpdateColors', colorizeNow)
  hooksecurefunc('FCF_StartAlertFlash', loopOver)
  hooksecurefunc('FCF_FadeOutChatFrame', loopOver)
end

for i = 1, NUM_CHAT_WINDOWS do
  local tab = _G["ChatFrame"..i.."Tab"]
end
------------------------------------------------------------------------
-- Remove the 60s flash time limit
------------------------------------------------------------------------
FCF_FlashTab = function(self)
  local tab = _G["ChatFrame"..id..'TabFlash']

  if(not self.isDocked or (self == SELECTED_DOCK_FRAME) or UIFrameIsFlashing(tab)) then
          return
  end
  tab:Show()
  UIFrameFlash(tab, 0.25, 0.25, -1, nil, 0.5, 0.5)
  -- UIFrameFlash(frame, fadeInTime, fadeOutTime, flashDuration, showWhenDone, flashInHoldTime, flashOutHoldTime)
end