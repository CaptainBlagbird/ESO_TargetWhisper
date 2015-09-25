--[[

Target Whisper
by CaptainBlagbird
https://github.com/CaptainBlagbird

--]]

local strings = {
	TARGET_WHISPER_BINDING_CATEGORY_TITLE          = "|c70C0DETarget Whisper|r",
	SI_BINDING_NAME_TARGETWHISPER_START_DIRECT     = "Start Chat To Targeted Player |c777777- Only opens chat if a player is targeted.|r",
	SI_BINDING_NAME_TARGETWHISPER_START            = "Start Chat (To Targeted Player) |c777777- As the previous option, but also opens normal chat when no player is targeted.|r",
	SI_BINDING_NAME_TARGETWHISPER_START_LAST       = "Start Chat (To Last Targeted Player) |c777777- Opens chat to last targeted player (or normal chat if no one has been targeted yet).|r",
	SI_BINDING_NAME_TARGETWHISPER_START_LAST_ENEMY = "Start Chat (To Last Targeted Enemy Player) |c777777- As the previous option, but only for enemies.|r",
}

for key, value in pairs(strings) do
   ZO_CreateStringId(key, value)
   SafeAddVersion(key, 1)
end