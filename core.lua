------------------------------------------------------------------------
-- Setting up the local scope
------------------------------------------------------------------------
local _, Talkative2 = ...
local handler = CreateFrame("Frame")

local frames = Talkative2.frames

------------------------------------------------------------------------
-- Functions
------------------------------------------------------------------------
-- function Talkative2.PLAYER_ENTERING_WORLD(...)
--   print('Talkative2 Loaded') -- debugging purposes
-- end

function Talkative2.PLAYER_LOGIN(...)
  DEFAULT_CHATFRAME_ALPHA = 0
  -- making sure the toast window doesn't move offscreen ;)
  BN_TOAST_LEFT_OFFSET = BN_TOAST_LEFT_OFFSET + ChatFrame1ButtonFrame:GetWidth() + 5

  Talkative2.Init()
end

function Talkative2.PLAYER_LEAVING_WORLD(...)
  FCF_SavePositionAndDimensions(ChatFrame1)
end

-- ClassColors
function Talkative2.UPDATE_CHAT_COLOR_NAME_BY_CLASS(self,event,type,set,...)
  if not set then SetChatColorNameByClass(type,true); end
end

------------------------------------------------------------------------
-- Many Whelps, handle Events
------------------------------------------------------------------------
handler:SetScript('OnEvent', function(self, event, ...)
  Talkative2[event](self, event, ...)
end)

for k, v in pairs(Talkative2) do
  handler:RegisterEvent(k) -- Register all events for which handlers have been defined
end
