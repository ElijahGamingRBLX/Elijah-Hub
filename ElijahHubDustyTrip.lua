local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Elijah Hub - Dusty Trip (BETA)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Elijah Hub - Dusty Trip",
	Content = "Elijah Hub Has Been Loaded",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Change Walkspeed",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	end	  
})

Tab:AddTextbox({
	Name = "Change JumpPower",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	end	  
})

Tab:AddButton({
	Name = "Infinite Jump",
	Callback = function()
      		local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
  	end    
})

Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
  	end    
})

local Tab2 = Window:MakeTab({
	Name = "ESP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab2:AddButton({
	Name = "Player ESP",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab2:AddButton({
	Name = "Destroy UI",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})
OrionLib:Init()
