------------------------------------------------------------------------
-- Setting up the local scope
------------------------------------------------------------------------
local _, Talkative2 = ...

local shorters = {
  whisper_in = '',
  yell = '',
  instance = '',
  instancelead = '',
  guild = '',
  officer = '',
  raid = '',
  raidlead = '',
  raidwarning = '',
  party = '',
  partylead = '',
  dungeonguide = ''
}

-- Flags
CHAT_FLAG_AFK = "<AFK>"
CHAT_FLAG_COM = "<COM>"
CHAT_FLAG_DND = "<DND>"
CHAT_FLAG_GM = "<GM>"

-- Yell/Say
CHAT_YELL_GET = "%s yells:\32";
CHAT_YELL_SEND = "Yell:\32";
CHAT_SAY_GET = "%s says:\32";
CHAT_SAY_SEND = "Say:\32";

-- Whisper
CHAT_WHISPER_GET = "%s whispers:\32";
CHAT_WHISPER_INFORM_GET = "To %s:\32";
CHAT_WHISPER_SEND = "Tell %s:\32";
CHAT_BN_WHISPER_GET = "%s whispers:\32";
CHAT_BN_WHISPER_INFORM_GET = "To %s:\32";
CHAT_BN_WHISPER_SEND = "Tell %s:\32";

-- BN Convo's
CHAT_BN_CONVERSATION_GET = "%s:\32";
CHAT_BN_CONVERSATION_GET_LINK = "|Hchannel:BN_CONVERSATION:%d|h[%s. Conversation]|h";
CHAT_BN_CONVERSATION_LIST = "%s %s";
CHAT_BN_CONVERSATION_SEND = "[%d. Conversation]:";

-- Instance
CHAT_INSTANCE_CHAT_GET = "|Hchannel:INSTANCE_CHAT|h[Instance]|h %s:\32";
CHAT_INSTANCE_CHAT_LEADER_GET = "|Hchannel:INSTANCE_CHAT|h[Instance Leader]|h %s:\32";
CHAT_INSTANCE_CHAT_SEND = "Instance:\32";

-- Guild
CHAT_GUILD_GET = "|Hchannel:GUILD|h[Guild]|h %s:\32";
CHAT_GUILD_SEND = "Guild:\32";
CHAT_OFFICER_GET = "|Hchannel:OFFICER|h[Officer]|h %s:\32";
CHAT_OFFICER_SEND = "Officer:\32";

-- Raid
CHAT_RAID_GET = "|Hchannel:RAID|h[Raid]|h %s:\32";
CHAT_RAID_LEADER_GET = "|Hchannel:RAID|h[Raid Leader]|h %s:\32";
CHAT_RAID_SEND = "Raid:\32";
CHAT_RAID_WARNING_GET = "[Raid Warning] %s:\32";
CHAT_RAID_WARNING_SEND = "Raid Warning:\32";

-- Party
CHAT_PARTY_GET = "|Hchannel:PARTY|h[Party]|h %s:\32";
CHAT_PARTY_GUIDE_GET = "|Hchannel:PARTY|h[Dungeon Guide]|h %s:\32";
CHAT_PARTY_LEADER_GET = "|Hchannel:PARTY|h[Party Leader]|h %s:\32";
CHAT_PARTY_SEND = "Party:\32";
