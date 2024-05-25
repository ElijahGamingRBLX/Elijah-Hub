--[[
	Credit To SkireScripts
  Obfuscating Soon
]]
local ts = game:GetService("TweenService")
local teleport = game:GetService("TeleportService")
local plr = game:GetService("Players").LocalPlayer
local root = plr.Character.HumanoidRootPart
-- functions
local function tp(pos, b)
	local old = root.CFrame
	root.CFrame = pos
	if b then
		root.CFrame = old
	end
end
local function tween(pos, span, b)
	local old = root.CFrame
	ts:Create(plr.Character.HumanoidRootPart, TweenInfo.new(span, Enum.EasingStyle.Linear), {CFrame = pos}):Play()
	if b then
		ts:Create(plr.Character.HumanoidRootPart, TweenInfo.new(span, Enum.EasingStyle.Linear), {CFrame = old}):Play()
	end
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Elijah Hub | Classic Hub", HidePremium = false, SaveConfig = false, ConfigFolder = "nil"})
local QT = Window:MakeTab({
	Name = "Quests",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local GT = Window:MakeTab({
	Name = "Games",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
QT:AddSection({Name = "Quests"})
GT:AddSection({Name = "Supported"})
QT:AddButton({
	Name = "Complete Cartride | V1",
	Callback = function()
		local old = plr.Character.HumanoidRootPart.CFrame
		tp(CFrame.new(-227, 547, 293), false) wait(.1)
		tp(CFrame.new(-226, 546, 301), false) wait(.1)
		firetouchinterest(plr.Character.Head, game.Workspace.CartRide.Minecart.Finish, 0)
		wait(.1)
		firetouchinterest(plr.Character.Head, game.Workspace.CartRide.Minecart.Finish, 1)
		wait(.7)
		plr.Character.Humanoid.Sit = false
		tp(old, false)
	end    
})
QT:AddButton({
	Name = "Complete Obby Of Glory",
	Callback = function()
		local checkpoints = game:GetService("Workspace")["Obby Island"].Obbies.Obby1.Checkpoints:GetChildren()
		table.sort(checkpoints, function(a, b)
			return tonumber(a.Name) < tonumber(b.Name)
		end)
		for _, v in ipairs(checkpoints) do
			if v.Name == "7" then
				tp(v.Base.CFrame+Vector3.new(0,5,11), false)
				wait(0.2)
				tween(v.Base.CFrame+Vector3.new(0,2,0), 0.1, false)
				wait(0.3)
				fireproximityprompt(game.Workspace.QuestRewards.ObbyRewards.Obby1Reward:WaitForChild("ProximityPrompt"))
			end
			if v.Name == tostring(_) then
				tp(v.Base.CFrame+Vector3.new(0,5,5), false)
				wait(0.2)
				tween(v.Base.CFrame+Vector3.new(0,3,0), 0.1, false)
				wait(0.2)
			end
		end
	end    
})
QT:AddButton({
	Name = "Complete Obby Of Doom",
	Callback = function()
		local checkpoints = game:GetService("Workspace")["Obby Island"].Obbies.Obby2.Checkpoints:GetChildren()
		table.sort(checkpoints, function(a, b)
			return tonumber(a.Name) < tonumber(b.Name)
		end)
		for _, v in ipairs(checkpoints) do
			if v.Name == "7" then
				tp(v.Base.CFrame+Vector3.new(-11,5,0), false)
				wait(0.2)
				tween(v.Base.CFrame+Vector3.new(0,2,0), 0.1, false)
				wait(0.3)
				fireproximityprompt(game.Workspace.QuestRewards.ObbyRewards.Obby2Reward:WaitForChild("ProximityPrompt"))
			end
			if v.Name == tostring(_) then
				tp(v.Base.CFrame+Vector3.new(-5,5,0), false)
				wait(0.2)
				tween(v.Base.CFrame+Vector3.new(0,3,0), 0.1, false)
				wait(0.2)
			end
		end
	end    
})
QT:AddButton({
	Name = "Complete Buried Treasure Quest",
	Callback = function()
		if plr.PlayerData.Quests:FindFirstChild("Treasure") == nil then
			tp(game.Workspace.QuestRewards.BuriedTreasure["1"].CFrame+Vector3.new(0, 6, 0))
			wait(.2)
			fireproximityprompt(game.Workspace.QuestRewards.BuriedTreasure["1"].ProximityPrompt)
		end
		wait(1)
		for i = 1, 10 do
			for i, v in ipairs(game.Workspace.QuestRewards.BuriedTreasure:GetChildren()) do
				if tonumber(v.Name) == plr.PlayerData.Quests.Treasure.Value+1 then
					tp(v.CFrame+Vector3.new(0, 6, 0))
					wait(.2)
					fireproximityprompt(v.ProximityPrompt)
				end
				wait(0.4)
			end
		end
	end    
})
QT:AddButton({
	Name = "Complete Cloud Quest",
	Callback = function()
		for i, v in ipairs(game.Workspace.QuestRewards.SecretRewards:GetChildren()) do
			if v:FindFirstChild("ProximityPrompt") then
				tp(v.CFrame+Vector3.new(0,3,0), false)
				wait(0.2)
				fireproximityprompt(v.ProximityPrompt)
				wait(3)
			end
		end
	end    
})
QT:AddButton({
	Name = "Complete Capture the Flag",
	Callback = function()
		for i = 0, 3 do
			firetouchinterest(plr.Character.Head, game.Workspace.FlagStands.BlueFlagStand.Base, 0)
			firetouchinterest(plr.Character.Head, game.Workspace.FlagStands.RedFlagStand.Base, 0)
			wait(.1)
			firetouchinterest(plr.Character.Head, game.Workspace.FlagStands.BlueFlagStand.Base, 1)
			firetouchinterest(plr.Character.Head, game.Workspace.FlagStands.RedFlagStand.Base, 1)
			wait(2.5)
		end
	end    
})
QT:AddButton({
	Name = "Complete Checkpoints",
	Callback = function()
		for i,v in pairs(game.Workspace.Checkpoints:GetChildren()) do
			firetouchinterest(plr.Character.Head, v.Checkpoint.Primary, 0)
			--wait(.1)
			--firetouchinterest(plr.Character.Head, v.Checkpoint.Primary, 0)
		end	
	end    
})
--[[ ROCKET
	QT:AddButton({
	Name = "Complete Rocket Quest",
	Callback = function()
		local args = {[1] = 7802,[2] = Vector3.new(-82, 724.9589233398438, 564.684814453125)}
	game:GetService("ReplicatedStorage").Services.ToolHandlers.RocketLauncher.Net.LauncherHit:FireServer(unpack(args))
	end    
})
OrionLib:Init()
