--[[
    Credit To SkireScripts
    Obfuscating Soon
]]
--stuff
local ts = game:GetService("TweenService")
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
local Window = OrionLib:MakeWindow({Name = "Elijah Script | Classic Event | Driving Empire", HidePremium = false, SaveConfig = false, ConfigFolder = "nil"})
local QT = Window:MakeTab({
	Name = "Collect Tix",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
QT:AddSection({Name = "Driving Empire"})
QT:AddButton({
	Name = "Collect Tix",
	Callback = function()
		for i = 1, 10 do
			for i,v in pairs(game.Workspace.Game.LiveOpsPersistent.ClassicRoblox.Tickets:GetChildren()) do
				tween(v.Currency_Tix.Hitbox.CFrame, 1, false)
			end
			wait(1.5)
		end
	end    
})
OrionLib:Init()
