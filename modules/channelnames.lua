local shorthand = {
  instance = 'i',
  instancelead = 'I',
  guild = 'g',
  officer = 'o',
  raid = 'r',
  raidlead = 'R',
  raidwarning = 'RW',
  party = 'p',
  partylead = 'P',
  dungeonguide = 'D'
}

-- Flags
CHAT_FLAG_AFK = "<AFK>"
CHAT_FLAG_COM = "<COM>"
CHAT_FLAG_DND = "<DND>"
CHAT_FLAG_GM = "<GM>"

-- Yell/Say
CHAT_YELL_GET = "%s yells:\32"
CHAT_SAY_GET = "%s says:\32"

-- Whisper
CHAT_WHISPER_GET = "%s whispers:\32"
CHAT_WHISPER_INFORM_GET = "@ %s:\32"
CHAT_BN_WHISPER_GET = "%s whispers:\32"
CHAT_BN_WHISPER_INFORM_GET = "@ %s:\32"

-- BN Convo's
CHAT_BN_CONVERSATION_GET = "%s:\32"
CHAT_BN_CONVERSATION_GET_LINK = "|Hchannel:BN_CONVERSATION:%d|h[%s. Conversation]|h"
CHAT_BN_CONVERSATION_LIST = "%s %s"

-- Instance
CHAT_INSTANCE_CHAT_GET = "|Hchannel:INSTANCE_CHAT|h" .. shorthand.instance .. "|h %s:\32"
CHAT_INSTANCE_CHAT_LEADER_GET = "|Hchannel:INSTANCE_CHAT|h" .. shorthand.instancelead .. "|h %s:\32"

-- Guild
CHAT_GUILD_GET = "|Hchannel:GUILD|h" .. shorthand.guild .. "|h %s:\32"
CHAT_OFFICER_GET = "|Hchannel:OFFICER|h" .. shorthand.officer .. "|h %s:\32"

-- Raid
CHAT_RAID_GET = "|Hchannel:RAID|h" .. shorthand.raid .. "|h %s:\32"
CHAT_RAID_LEADER_GET = "|Hchannel:RAID|h" .. shorthand.raidlead .. "|h %s:\32"
CHAT_RAID_WARNING_GET = shorthand.raidwarning.. " %s:\32"

-- Party
CHAT_PARTY_GET = "|Hchannel:PARTY|h" .. shorthand.party .. "|h %s:\32"
CHAT_PARTY_GUIDE_GET = "|Hchannel:PARTY|h" .. shorthand.dungeonguide .. "|h %s:\32"
CHAT_PARTY_LEADER_GET = "|Hchannel:PARTY|h" .. shorthand.partylead .. "|h %s:\32"

-- Send strings - those you see in the Editbox header
CHAT_PARTY_SEND = "Party:\32"
CHAT_RAID_SEND = "Raid:\32"
CHAT_GUILD_SEND = "Guild:\32"
CHAT_INSTANCE_CHAT_SEND = "Instance:\32"
CHAT_BN_CONVERSATION_SEND = "[%d. Conversation]:"
CHAT_BN_WHISPER_SEND = "@ %s:\32"
CHAT_WHISPER_SEND = "@ %s:\32"
CHAT_YELL_SEND = "Yell:\32"
CHAT_SAY_SEND = "Say:\32"
CHAT_OFFICER_SEND = "O:\32"
CHAT_RAID_WARNING_SEND = "RW:\32"