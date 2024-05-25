local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Elijah Hub | Clip It | Classic", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Get Tix",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Get All Tix",
	Callback = function()
for tix = 0, 10 do
    local rizz = string.format("%02d", tix)
    local args = {[1] = {["badgeKey"] = "CLASSIC_EVENT_TIX_"..rizz}}
    game:GetService("ReplicatedStorage").Remotes.RequestClassicBadge:InvokeServer(unpack(args))
end
  	end    
})
