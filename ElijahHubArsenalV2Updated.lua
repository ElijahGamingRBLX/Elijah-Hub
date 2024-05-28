
q = loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/kavo-ui/main/kavo.lua"))()
local r = q.CreateLib("Elijah Hub - Arsenal", "BloodTheme")

local s = Instance.new("ScreenGui")
local u = Drawing.new("Circle")
u.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2,workspace.CurrentCamera.ViewportSize.Y/2)
u.Radius = 50;
u.Filled = false;
u.Color=Color3.fromRGB(255,255,255)
u.Visible = false;
u.Radius = 80;
u.Transparency = 0.5;
u.NumSides = 64;
u.Thickness = 0;

local v = r:NewTab("Welcome")
local w = v:NewSection("Hello, "..game.Players.LocalPlayer.Name)
local x = r:NewTab("Player")
local y = x:NewSection("Player Modifications")
local z = r:NewTab("Combat")
local A = z:NewSection("FOV Toggle")
local B = r:NewTab("Visuals")
local C = B:NewSection("Game Visuals")
local D = r:NewTab("Gun")
local E = D:NewSection("Gun Modification")
local F = r:NewTab("Mics")
local G = F:NewSection("Some Mics")

-- Clearly useless
local H = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
w:NewButton("Player: "..game.Players.LocalPlayer.Name.." | "..game.Players.LocalPlayer.UserId,"?",function()
    print("hi")
end) 

w:NewButton("Game: "..game.PlaceId.." | "..H.Name,"?",function()
print("hi")
end)

w:NewButton("Account Age: "..game.Players.LocalPlayer.AccountAge.." | Premium : Yes","?",function()
print("hi")
end)

w:NewButton("Discord | Click To Copy", "?", function()
setclipboard("https://discord.gg/GZhUvV5gJy")
end)

y:NewTextBox("Walkspeed","Changes the player's walkspeed",function(I)
while true do wait()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=I
 end
  end)
  
  local J = false;
  y:NewToggle("Bunny Hop","?",function(K)
  J = K;
  spawn(function()
  while wait()
  and J do game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
   end
    end)
	end)
	
	y:NewButton("Infinite Jump","?",function()
	loadstring(game:HttpGet('https://pastebin.com/raw/qhBY6frK'))()
	end)
	
	y:NewLabel("Camera Modifications")
	y:NewToggle("3rd Person","?",function(L)
	if L then game:GetService("Players")["LocalPlayer"].PlayerGui.GUI.Client.Variables.thirdperson.Value = true 
	else 
	game:GetService("Players")["LocalPlayer"].PlayerGui.GUI.Client.Variables.thirdperson.Value = false
	 end 
	 end)

	 A:NewToggle("Draw FOV", "?",function(M)
u.Visible = M 
end)

A:NewLabel("FOV Modifications")
local N = 50;
A:NewSlider("FOV Radius", "?",500,1,function(M)
u.Radius = M
 end)

 A:NewSlider("FOV NumSides", "?",100,0,function(O)
 u.NumSides = O 
 end)

 A:NewSlider("FOV Transparency", "?",100,0.7,function(O)
 u.Transparency = O 
 end)

 A:NewSlider("FOV Thickness", "?",5,1,function(M)
 u.Thickness = M
  end)

  A:NewToggle("FOV Filled", "?", function(O)
  u.Filled = O 
  end)

 A:NewColorPicker("FOV Color", "?", Color3.fromRGB(255,255,255), function(P)
 u.Color = P 
 end)

 A:NewLabel("Silent Aim Modifications")
 A:NewDropdown("Aimpart", "?", {"HumanoidRootPart","Head","UpperTorso","LowerTorso"}, function(Q)
 bodypart = Q end)
 
 A:NewToggle("Silent Aim", "?", function(O)
 SAToggle = O;
 local R = workspace.CurrentCamera;
 local S = game.Players;
 local T = S.LocalPlayer;
 local U = T:GetMouse()function ClosestPlayer()
 local V, W = N;
 for X, Y in pairs(S.GetPlayers(S)) do 
	 if Y==T then
	 end;
	 if Y.Team==T then end;
	 if not Y.Character then end;
	 local Z = Y.Character.FindFirstChild(Y.Character,""..bodypart)
	 if not Z then 
	 end;
	 local _,a0 = R.WorldToScreenPoint(R,Z.Position)
	 if not a0 then
	  end;
	  local a1,a2 = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2, workspace.CurrentCamera.ViewportSize.Y/2), Vector2.new(_.X,_.Y)
	  local a3 = (a2-a1).Magnitude;if a3<V then
		   V=a3;W=Y
		    end 
	  end;
	  return W 
	  end;
	  local a4 = getrawmetatable(game)
	  local a5 = a4.__namecall;
	  local a6 = a4.__index;setreadonly(a4,false)a4.__namecall=newcclosure(function(self,...)
	  local a7,a8 = {...}, getnamecallmethod()
	  if a8=="FindPartOnRayWithIgnoreList" and not checkcaller()and 
	  SAToggle then 
		  local a9 = ClosestPlayer()
		  if a9 and a9.Character and a9.Character.FindFirstChild(a9.Character,bodypart) 
		  then 
			  a7[1] = Ray.new(R.CFrame.Position, (a9.Character[bodypart].Position-R.CFrame.Position).Unit*1000)
			  return a5(self, unpack(a7))
			  end
			   end;
			   return a5(self,...)
			   end)
			   a4.__index = newcclosure(function(self,aa)
			   if aa=="Clips" then 
				   return workspace.Map
				    end;
					return a6(self,aa)
					end)
					setreadonly(a4,true)
					end)

					A:NewLabel("Hitbox")A:NewButton("Hitbox","Expands Hitbox",function()
					loadstring(game:HttpGet("https://pastebin.com/raw/RrTbsWa4",true))()
					end)
					
					A:NewButton("Invisible Hitbox","Expands Hitbox",function()
					loadstring(game:HttpGet("https://pastebin.com/raw/KpQhjvRQ",true))()
					end)
					
					A:NewToggle("NoClip","?",function(O)
					local ab = false;local ac;
					if not ab then 
						local ad = Instance.new("ScreenGui", game.CoreGui)
						print("NOCLIP: Press Q to Activate")
						ac = Instance.new("TextLabel",ad)ac.AnchorPoint=Vector2.new(0,1)
						ac.Position = UDim2.new(0,0,1,0)ac.Size=UDim2.new(0,200,0,50)
						ac.BackgroundTransparency=1;
						ac.TextScaled=true;
						ac.TextStrokeTransparency=0;
						ac.TextColor3=Color3.new(0,0,0)
						ac.TextStrokeColor3=Color3.new(1,1,1)
						ac.Text="Noclip: Enabled"end;
						local ae = true;
						local af = game.Players.LocalPlayer;
						local ag = af.Character or af.CharacterAdded:Wait()
						local ah = O;
						if ah == false then
							 ae = not ae;
							 if not ab then 
								 ac.Text="Noclip: "..(ae and"Enabled"or"Disabled")
								 end
								  end;
								  while true do
									   af = game.Players.LocalPlayer; 
									   ag = af.Character;
									   if ae then for ai, O in pairs(ag:GetDescendants()) 
									   do pcall(function()
									   if O:IsA("BasePart")then
										    O.CanCollide=false
											 end 
											 end)
											 end 
											 end;
											 game:GetService("RunService").Stepped:wait()
											 end 
									end)
									
									local aj = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/V.G-Hub/main/Karrot-Esp"))()
									C:NewToggle("Enable Esp", "?", function(K)
									aj:Toggle(K)
									aj.Players = K 
									end)
									
									C:NewToggle("Tracers Esp", "?" ,function(K)
									aj.Tracers = K
									 end)
									 
									 C:NewToggle("Name Esp", "?", function(K)
									 aj.Names = K
									  end)
									  
									  C:NewToggle("Boxes Esp", "?", function(K)
									  aj.Boxes = K 
									  end)
									  
									  C:NewToggle("Team Coordinate", "?", function(L)
									  aj.TeamColor = L
									   end)

									   C:NewToggle("Team Mates","?",function(L)
									   aj.TeamMates = L 
									   end)
									   
									   C:NewColorPicker("ESP Color","?", Color3.fromRGB(255,255,255), function(P)
									   aj.Color = P 
									   end)

									   C:NewLabel("Arm Charms")
									   local function ak(al)
									   return Vector3.new(al.R,al.G,al.B)
									   end;
									   local am = "Plastic"

									   C:NewDropdown("Arm Material", "?", {"Plastic","ForceField","Wood","Grass"}, function(an)
									   am = an 
									   end)
									   local ao = Color3.new(50,50,50)
									   
									   C:NewColorPicker('Arm Color', "?", Color3.fromRGB(50,50,50), function(ap)
									   ao = ap 
									   end)
									   
									   local aq = false;
									   C:NewToggle("Arm Charms", "?", function(L)
									   aq = L;
									   if aq 
									   then 
										   spawn(function()
										   while true do wait(.01)
										   if not aq then break
										    else
											 if not workspace.Camera:FindFirstChild("Arms") then
												  wait()
												  else 
												  for ar, O in pairs(workspace.Camera.Arms:GetDescendants())
												  do
													   if O.Name=='Right Arm'or O.Name=='Left Arm'then 
														   if O:IsA("BasePart")
														   then
															    O.Material=Enum.Material[am]O.Color = ao
																 end 
																 elseif O:IsA("SpecialMesh")
																 then 
																	 if O.TextureId==''then 
																		 O.TextureId='rbxassetid://0'O.VertexColor=ak(ao)
																		 end 
																		 elseif O.Name=='L'
																		 or
																		  O.Name=='R'
																		  then
																			   O:Destroy()
																			   end 
																			   end
																			    end
																				 end 
																				 end
																				  end)
																				  end
																				   end)

SettingsInfinite = false;
E:NewToggle("Infinite Ammo", "?", function(K)
SettingsInfinite = K;
game:GetService("RunService").Stepped:connect(function()
pcall(function()
if SettingsInfinite then
	 game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value=999;
	 game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value=999
	  end 
	  end)
	  end)
	  end)

	  E:NewButton("Rapid Fire", "?", function()
	  local as=game.ReplicatedStorage;
	  for ar, O in pairs(as.Weapons:GetDescendants())
	  do
		   if O.Name=="Auto"
		   then O.Value = true 
		   end;
		   if O.Name == "RecoilControl" then
			    O.Value = 0 
				end;
				if O.Name == "MaxSpread" then
					 O.Value = 0
					  end;
					 if O.Name == "ReloadTime" then 
						 O.Value = 0 
						 end;
						 if O.Name == "FireRate"
						 then O.Value = 0.05
						  end;
						  if O.Name == "Crit"
						  then 
							  O.Value = 20
							   end 
							   end 
							   end)
							   
							   E:NewLabel("Gun Charm")
							   local at = "Plastic"
							   
							   E:NewDropdown("Gun Material", "?", {"Plastic","ForceField","Wood","Grass"}, function(an)
							   at = an 
							   end)
							   local au = Color3.new(50,50,50)
							   
							   E:NewColorPicker('Gun Color', "?", Color3.fromRGB(50,50,50), function(ap)
							   au = ap 
							   end)
							   local av = false;
							   
							   E:NewToggle("Gun Charms", "?", function(L)
							   av = L;
							   if av 
							   then 
								   spawn(function()
								   while true do wait(.01)
								   if not av then 
									   break else 
									   if not workspace.Camera:FindFirstChild("Arms")
									   then
										    wait()
											else 
											for ar,O in pairs(workspace.Camera.Arms:GetDescendants())
											do 
												if O:IsA("MeshPart")
												then
													 O.Material = Enum.Material[at]
													 O.Color = au 
													 end 
													 end 
													 end
													  end 
													  end 
													  end)
													  end 
													  end)
													  
													  G:NewButton("Anti Lag", "?", function()
													  for ai,O in pairs(game:GetService("Workspace"):GetDescendants()) 
													  do 
														  if O:IsA("BasePart")
														  and not O.Parent:FindFirstChild("Humanoid")
														  then 
															  O.Material = Enum.Material.SmoothPlastic;
															  if O:IsA("Texture")
															  then O:Destroy()
															  end 
															  end 
															  end 
															  end)
                                
                                G:NewButton("Elijah Hub - Arsenal", "By Elijah (AKA Riley)", function()
											print("Enjoy Using The Script")
															  end)
