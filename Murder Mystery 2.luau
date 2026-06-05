LocalPlayer=game.Players.LocalPlayer

PlayerGui=LocalPlayer.PlayerGui

ScreenGui=Instance.new("ScreenGui",PlayerGui)

--GUI

GUI=Instance.new("Frame",ScreenGui)

GUI.Position=UDim2.new(0.323, 0,0.276, 0)

GUI.Size=UDim2.new(0, 493,0, 254)

GUI.BackgroundTransparency=0

GUI.BackgroundColor3=Color3.new(0.776471, 0, 0.0117647)

--UICorner

Corner=Instance.new("UICorner",GUI)

Corner.CornerRadius=UDim.new(0,14)

--UIGradient

Gradient=Instance.new("UIGradient",GUI)

Gradient.Color = ColorSequence.new(Color3.new(0.776471, 0, 0.0117647),Color3.new(0.439216, 0, 0.0235294))

--Drag

DragDetector=Instance.new("UIDragDetector",GUI)

--Text

Text=Instance.new("TextLabel",GUI)

Text.Text="Murder Mystery 2 GUI"

Text.BackgroundTransparency=1

Text.Position=UDim2.new(0.296, 0,0, 0)

Text.TextSize=44

Text.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")

Text.TextColor3=Color3.new(0,0,0)

Text.Size=UDim2.new(0, 200,0, 50)

--ESPButton

ESP=Instance.new("TextButton",GUI)

ESP.BackgroundColor3=Color3.new(0,0,0)

ESP.BackgroundTransparency=0.9

ESP.Position=UDim2.new(0.187, 0,0.197, 0)

ESP.Text="ESP"

ESP.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")

ESP.TextSize=40

ESP.TextColor3=Color3.new(0, 0, 0)

ESP.Size=UDim2.new(0, 308,0, 53)

ESPCorner=Instance.new("UICorner",ESP)

--KillAll button

KillAll=ESP:Clone()

KillAll.Text="Kill All"

KillAll.Position=UDim2.new(0.187, 0,0.433, 0)

KillAll.Parent=GUI

--KillAll button logic

KillAll.MouseButton1Click:Connect(function()

OldPositions={}

if not KillAll.Active then return end

KillAll.Active=false

Players=game:GetService("Players")

for _,Player in ipairs(Players:GetPlayers()) do

	if Player~=game.Players.LocalPlayer and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then

		OldPositions[Player]=Player.Character.HumanoidRootPart.CFrame

		Player.Character.HumanoidRootPart.CFrame=LocalPlayer.Character.HumanoidRootPart.CFrame

	end

end

task.delay(1,function()

	for Player, OldPos in pairs(OldPositions) do

		if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then

			Player.Character.HumanoidRootPart.CFrame = OldPos

		end

	end

	KillAll.Active = true

	OldPositions={}

end)

end)

--TeleportsButton

Teleports=ESP:Clone()

Teleports.Text="Lobby Teleport"

Teleports.Position=UDim2.new(0.187, 0,0.673, 0)

Teleports.Parent=GUI

--TG Text

TGText=Instance.new("TextLabel",GUI)

TGText.Text="TG:@HaxScripts"

TGText.BackgroundTransparency=1

TGText.TextSize=24

TGText.Size=UDim2.new(0, 200,0, 50)

TGText.Position=UDim2.new(-0.039, 0,0.819, 0)

TGText.TextColor3=Color3.new(0,0,0)

TGText.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")

--ESP button logic

ESPs = {}

ESP.MouseButton1Click:Connect(function()

local LocalPlayer = game.Players.LocalPlayer

local Players = game.Players

local function getColorByTool(player)

	local tool = player.Backpack:FindFirstChildOfClass("Tool") or player.Character:FindFirstChildOfClass("Tool")

	if tool then

		if tool.Name == "Knife" then

			return Color3.new(1, 0, 0)

		elseif tool.Name == "Gun" then

			return Color3.new(0, 0, 1)

		else

			return Color3.new(0, 1, 0)

		end

	end

end

while wait(1) do

	for _,player in ipairs(Players:GetPlayers()) do

		if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then

			local HRP = player.Character.HumanoidRootPart

			local ESPBox = HRP:FindFirstChild("ESP")



			if not ESPBox then

				ESPBox = Instance.new("BoxHandleAdornment", HRP)

				ESPBox.Name = "ESP"

				ESPBox.Adornee = HRP

				ESPBox.Size = Vector3.new(4, 6, 2)

				ESPBox.Transparency = 0.6

				ESPBox.AlwaysOnTop = true

				ESPBox.ZIndex = 10

			end

			ESPBox.Color3 = getColorByTool(player)

		end

	end

end

end)

--Teleports button logic

Teleports.MouseButton1Click:Connect(function()

LocalPlayer.Character:MoveTo(Vector3.new(97, 140, 55))

end)

--Destroy GUI

Destroy=Instance.new("TextButton",GUI)

Destroy.Text="Destroy GUI"

Destroy.BackgroundTransparency=1

Destroy.Size=UDim2.new(0, 137,0, 42)

Destroy.TextSize=24

Destroy.Position=UDim2.new(0.722, 0,0.835, 0)

Destroy.TextColor3=Color3.new(0,0,0)

Destroy.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")

Destroy.MouseButton1Click:Connect(function()

GUI:Destroy()

end)
