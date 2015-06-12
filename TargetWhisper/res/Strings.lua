--[[

Target Whisper
by CaptainBlagbird
https://github.com/CaptainBlagbird

--]]

local strings = {
	TARGET_WHISPER_BINDING_CATEGORY_TITLE           = "|c70C0DETarget Whisper|r",
	SI_BINDING_NAME_TARGET_WHISPER_BINDING_STRING   = "Start Chat To Targeted Player |c777777- Only opens chat if a player is targeted.|r",
	SI_BINDING_NAME_TARGET_WHISPER_BINDING_STRING_U = "Start Chat (To Targeted Player) |c777777- As the other option, but also opens normal chat when no player is targeted.|r",
}

for key, value in pairs(strings) do
   ZO_CreateStringId(key, value)
   SafeAddVersion(key, 1)
end