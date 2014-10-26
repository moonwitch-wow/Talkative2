------------------------------------------------------------------------
-- Setting up the local scope
------------------------------------------------------------------------
local _, Talkative2 = ...

local groups = {
  [ChatFrame1] = {"CHANNEL", "SAY", "EMOTE", "TEXT_EMOTE",
                  "YELL", "SYSTEM", "SYSTEM_NOMENU", "ERRORS", "IGNORED",
                  "CHANNEL1", "CHANNEL2", "CHANNEL3", "CHANNEL4", "CHANNEL5", "CHANNEL_JOIN", "CHANNEL_LEAVE",
                  "CHANNEL_LIST", "CHANNEL_NOTICE", "CHANNEL_NOTICE_USER","ACHIEVEMENT"},
  [ChatFrame3] = {"GUILD", "GUILD_OFFICER", "OFFICER", "GUILD_ACHIEVEMENT", "GUILD_MOTD"},
  [ChatFrame4] = {"PARTY", "PARTY_LEADER", "RAID", "RAID_LEADER", "RAID_WARNING",
                  "BATTLEGROUND", "BATTLEGROUND_LEADER", "BG_SYSTEM_HORDE", "BG_SYSTEM_ALLIANCE",
                  "BG_SYSTEM_NEUTRAL", "EMOTE", "YELL", "MONSTER_SAY", "MONSTER_YELL",
                  "MONSTER_WHISPER", "MONSTER_EMOTE", "MONSTER_BOSS_EMOTE", "MONSTER_BOSS_WHISPER",
                  "RAID_BOSS_WHISPER", "RAID_BOSS_EMOTE", "RAID_BOSS_WHISPER", "RAID_BOSS_EMOTE",
                  "SYSTEM", "INSTANCE_CHAT", "INSTANCE_CHAT_LEADER"},
  [ChatFrame5] = {"COMBAT_XP_GAIN", "COMBAT_MISC_INFO", "COMBAT_HONOR_GAIN", "COMBAT_FACTION_CHANGE",
                  "LOOT", "SKILL", "CURRENCY", "MONEY", "ROLL", "OPENING", "COMBAT_MISC_INFO"},
  [ChatFrame6] = {"WHISPER", "WHISPER_INFROM", "REPLY", "BN_WHISPER", "BN_CONVERSATION",
                  "BN_CONVERSATION_NOTICE", "BN_ALERT"}
}

------------------------------------------------------------------------
-- Util funcs
------------------------------------------------------------------------
function Talkative2.dummy() end -- to kill sht

function Talkative2.CreateChat(name,chatbox)
  FCF_OpenNewWindow(name)
  ChatFrame_RemoveAllChannels(chatbox)
  ChatFrame_RemoveAllMessageGroups(chatbox)
  for i,v in pairs(groups[chatbox]) do ChatFrame_AddMessageGroup(chatbox, v) end
end


------------------------------------------------------------------------
-- Init func
------------------------------------------------------------------------
function Talkative2.Init()
  -----------------------------
  -- Hiding the "I've got friends" thing
  FriendsMicroButton.Show = FriendsMicroButton.Hide
  FriendsMicroButton:Hide()

  -----------------------------
  -- hide chatbuttons
  ChatFrameMenuButton.Show = ChatFrameMenuButton.Hide
  ChatFrameMenuButton:Hide()

  -- Fix Combat log
  CombatLogQuickButtonFrame_Custom:HookScript("OnShow", CombatLogQuickButtonFrame_Custom.Hide)
  CombatLogQuickButtonFrame_Custom:Hide()
  CombatLogQuickButtonFrame_Custom:SetHeight(0)

  FCF_ResetChatWindows() -- Resets all chat
  FCF_ValidateChatFramePosition = Talkative2.dummy

  -----------------------------
  -- ChatFrame 1 is a special
  FCF_DockFrame(ChatFrame1, 1)
  FCF_SetWindowName(ChatFrame1, "GEN")
  ChatFrame1:SetUserPlaced(true)
  ChatFrame1:ClearAllPoints()
  ChatFrame1.ClearAllPoints = function() end
  ChatFrame1:SetWidth(UIParent:GetWidth()/3.25)
  ChatFrame1:SetHeight(math.floor(UIParent:GetHeight()/10)-1)
  ChatFrame1:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 8, 39)
  ChatFrame1.SetPoint = function() end
  ChatFrame1:Show()
  ChatFrame_RemoveAllChannels(ChatFrame1)
  ChatFrame_RemoveAllMessageGroups(ChatFrame1)
  for i,v in pairs(groups[ChatFrame1]) do ChatFrame_AddMessageGroup(ChatFrame1, v) end
  ChatFrame_AddChannel(ChatFrame1, GENERAL)
  ChatFrame_AddChannel(ChatFrame1, "Trade")


  Talkative2.CreateChat("GLD",ChatFrame3)
  Talkative2.CreateChat("GRP",ChatFrame4)
  Talkative2.CreateChat("LOOT",ChatFrame5)
  Talkative2.CreateChat("PST",ChatFrame6)

  -- Selecting Gen as base thanks to Phanx!
  FCF_Tab_OnClick(ChatFrame1Tab, "LeftButton")
  -- making sure the toast window doesn't move offscreen ;)
  BN_TOAST_LEFT_OFFSET = BN_TOAST_LEFT_OFFSET + ChatFrame1ButtonFrame:GetWidth() + 5

  for globalChannels = 1, 30 do
    ToggleChatColorNamesByClassGroup(true, "CHANNEL"..globalChannels)
  end

  for i in pairs(ChatTypeInfo) do   -- Enable All ColorNameByClass
    SetChatColorNameByClass(i,true)
  end
end