--[[

Target Whisper
by CaptainBlagbird
https://github.com/CaptainBlagbird

--]]

-- Addon info
TargetWhisper = {}
TargetWhisper.name = "TargetWhisper"
-- Local variables
local lastPlayer = ""
local lastEnemy = ""


-- Function for starting chat with targeted player
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

-- Function for starting chat with last targeted player/enemy
function TargetWhisper.StartLast(isEnemyOnlyEnabled)
	local target = lastPlayer
	if isEnemyOnlyEnabled then target = lastEnemy end
	
	if target ~= "" then
		-- Open chat in target mode
		StartChatInput("", CHAT_CHANNEL_WHISPER, target)
	else
		-- Normal chat behavior
		StartChatInput("")
	end
end

-- Event handler function for EVENT_RETICLE_TARGET_CHANGED
local function OnReticleTargetChanged(eventCode)
	if not IsUnitPlayer("reticleover") then return end
	lastPlayer = GetUnitNameHighlightedByReticle()
	if not IsUnitAttackable("reticleover") then return end
	lastEnemy = lastPlayer
end
EVENT_MANAGER:RegisterForEvent(TargetWhisper.name, EVENT_RETICLE_TARGET_CHANGED, OnReticleTargetChanged)
