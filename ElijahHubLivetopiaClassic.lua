local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Elijah Hub | Livetopia | Get Tix And Get Token", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Get Tix And Token",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddButton({
	Name = "Complete Delivery (Token) And Get Tix",
	Callback = function()
for deliveries = 0, 5 do
	local args={[1]={["event"]="gameend"}}
	game:GetService("ReplicatedStorage").Remotes.RobloxEvent202405RE:FireServer(unpack(args))
end
while true do
	for i,v in pairs(game:GetService("Workspace").RobloxClassic2024.RobloxHuntCoin:GetChildren()) do
		local args = {[1]="RewardRobloxCoin",[2]={["Progress"]=tonumber(v.Name),["Reward"]=1}}
		game:GetService("ReplicatedStorage").Remotes.RobloxEvent202405RF:InvokeServer(unpack(args))
	end
	wait()
end
  	end    
})
