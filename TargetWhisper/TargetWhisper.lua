--[[

Target Whisper
by CaptainBlagbird
https://github.com/CaptainBlagbird

--]]

-- Addon info
TargetWhisper = {}


function TargetWhisper.Start(isUntargetedEnabled)
	if IsUnitPlayer("reticleover") then
		-- Open chat in target mode
		local name = GetUnitNameHighlightedByReticle()
		StartChatInput("", CHAT_CHANNEL_WHISPER, name)
	elseif isUntargetedEnabled then
		-- Normal chat behavior
		StartChatInput("")
	end
end