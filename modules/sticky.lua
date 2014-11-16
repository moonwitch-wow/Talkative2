------------------------------------------------------------------------
-- Sticky channels
-- Sticky - makes your next line be in that channel
-- flashTab - makes the font 'flash' on new message
-- flashTabOnGeneral - makes GEN flash as well. Only for real issues!!
------------------------------------------------------------------------
ChatTypeInfo["SYSTEM"]                 = { sticky = 0, flashTab = true, flashTabOnGeneral = true }
ChatTypeInfo["SAY"]                    = { sticky = 0, flashTab = false, flashTabOnGeneral = false }
ChatTypeInfo["PARTY"]                  = { sticky = 1, flashTab = true, flashTabOnGeneral = false }
ChatTypeInfo["RAID"]                   = { sticky = 1, flashTab = true, flashTabOnGeneral = false }
ChatTypeInfo["GUILD"]                  = { sticky = 1, flashTab = true, flashTabOnGeneral = false }
ChatTypeInfo["OFFICER"]                = { sticky = 1, flashTab = true, flashTabOnGeneral = false }
ChatTypeInfo["WHISPER"]                = { sticky = 1, flashTab = true, flashTabOnGeneral = false }
ChatTypeInfo["WHISPER_INFORM"]         = { sticky = 0, flashTab = true, flashTabOnGeneral = false }
ChatTypeInfo["REPLY"]                  = { sticky = 1, flashTab = true, flashTabOnGeneral = false }
ChatTypeInfo["RAID_LEADER"]            = { sticky = 1, flashTab = true, flashTabOnGeneral = false }
ChatTypeInfo["RAID_WARNING"]           = { sticky = 0, flashTab = true, flashTabOnGeneral = true }
ChatTypeInfo["INSTANCE_CHAT"]          = { sticky = 1, flashTab = true, flashTabOnGeneral = false }
ChatTypeInfo["INSTANCE_CHAT_LEADER"]   = { sticky = 1, flashTab = true, flashTabOnGeneral = true }
ChatTypeInfo["PARTY_LEADER"]           = { sticky = 1, flashTab = true, flashTabOnGeneral = true }
ChatTypeInfo["BN_WHISPER"]             = { sticky = 1, flashTab = true, flashTabOnGeneral = true }
ChatTypeInfo["BN_WHISPER_INFORM"]      = { sticky = 0, flashTab = true, flashTabOnGeneral = false }
ChatTypeInfo["BN_CONVERSATION"]        = { sticky = 1, flashTab = true, flashTabOnGeneral = false }
