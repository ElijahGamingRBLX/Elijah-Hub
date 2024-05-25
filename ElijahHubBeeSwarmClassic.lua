local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Elijah Hub | Bee Swarm Simulator | Classic Event", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Get All Tix - Tab",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Get All Tix",
	Callback = function()
for tix = 0, 10 do
	game:GetService("ReplicatedStorage").TixEvent:FireServer(tix)
end	
  	end    
})
