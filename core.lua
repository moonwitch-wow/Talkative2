------------------------------------------------------------------------
-- Setting up the local scope
------------------------------------------------------------------------
local _, Talkative2 = ...
local handler = CreateFrame("Frame")

------------------------------------------------------------------------
-- Functions
------------------------------------------------------------------------
function Talkative2.PLAYER_ENTERING_WORLD(...)
  Talkative2.Init()
  print('Talkative2 Loaded') -- debugging purposes
end

function Talkative2.PLAYER_LOGIN(...)
  Talkative2.Tabify()
end

function Talkative2.PLAYER_LEAVING_WORLD(...)
 -- handle PLAYER_LEAVING_WORLD here
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
