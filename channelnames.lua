------------------------------------------------------------------------
-- Setting up the local scope
------------------------------------------------------------------------
local _, Talkative2 = ...

-- Flags
CHAT_FLAG_AFK = "[AFK] "
CHAT_FLAG_DND = "[DND] "
CHAT_FLAG_GM = "[GM] "

-- Whisper
CHAT_WHISPER_GET = "%s:\32" -- Whisper from player %s
CHAT_WHISPER_INFORM_GET = "@ %s:\32" -- A whisper already sent to player %s
CHAT_BN_WHISPER_GET = "%s:\32"
CHAT_BN_WHISPER_INFORM_GET = "@ %s:\32"

-- Instance
CHAT_INSTANCE_CHAT_GET = "|Hchannel:Battleground|hI.|h %s: "
CHAT_INSTANCE_CHAT_LEADER_GET = "|Hchannel:Battleground|hIL.|h %s: "

-- Guild
CHAT_GUILD_GET = "|Hchannel:GUILD|hG|h %s "
CHAT_OFFICER_GET = "|Hchannel:OFFICER|hO|h %s "

-- Raid
CHAT_RAID_GET = "|Hchannel:RAID|hR|h %s "
CHAT_RAID_WARNING_GET = "RW %s "
CHAT_RAID_LEADER_GET = "|Hchannel:RAID|hRL|h %s "

-- Party
CHAT_PARTY_GET = "|Hchannel:PARTY|hP|h %s "
CHAT_PARTY_LEADER_GET =  "|Hchannel:PARTY|hPL|h %s "
CHAT_PARTY_GUIDE_GET =  "|Hchannel:PARTY|hPG|h %s "
