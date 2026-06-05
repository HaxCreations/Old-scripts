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

Text.Text="Hide and Seek Extreme GUI"

Text.BackgroundTransparency=1

Text.Position=UDim2.new(0.296, 0,0, 0)

Text.TextSize=42

Text.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")

Text.TextColor3=Color3.new(0,0,0)

Text.Size=UDim2.new(0, 200,0, 50)

--Find All Button

FindAll=Instance.new("TextButton",GUI)

FindAll.BackgroundColor3=Color3.new(0,0,0)

FindAll.BackgroundTransparency=0.9

FindAll.Position=UDim2.new(0.185, 0,0.197, 0)

FindAll.Text="Player Teleport"

FindAll.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")

FindAll.TextSize=40

FindAll.TextColor3=Color3.new(0, 0, 0)

FindAll.Size=UDim2.new(0, 308,0, 53)

FindAllCorner=Instance.new("UICorner",FindAll)

--Player Teleport Button logic

FindAll.MouseButton1Click:Connect(function()

local Players=game.Players:GetPlayers()

for _,Player in ipairs(Players) do

	if Player~=LocalPlayer then

		LocalPlayer.Character.HumanoidRootPart.CFrame=Player.Character.HumanoidRootPart.CFrame+Vector3.new(0,2,0)

		task.wait(1)

	end

end

end)

--Credit AutoFarm button

CreditAutoFarm=FindAll:Clone()

CreditAutoFarm.Text="Credit AutoFarm"

CreditAutoFarm.Position=UDim2.new(0.187, 0,0.453, 0)

CreditAutoFarm.Parent=GUI

--Credit AutoFarm button logic

CreditAutoFarm.MouseButton1Click:Connect(function()

while task.wait(3) do

	local Credits=game.Workspace.GameObjects:GetDescendants()

	for _,Credit in ipairs(Credits) do

		if Credit:IsA("BasePart") then

			LocalPlayer.Character.HumanoidRootPart.CFrame=Credit.CFrame+Vector3.new(0,2,0)

			task.wait(0.5)

		end

	end

end

end)

--TG Text

TGText=Instance.new("TextLabel",GUI)

TGText.Text="TG:@HaxScripts"

TGText.BackgroundTransparency=1

TGText.TextSize=30

TGText.Size=UDim2.new(0, 200,0, 50)

TGText.Position=UDim2.new(0.296, 0,0.661, 0)

TGText.TextColor3=Color3.new(0,0,0)

TGText.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")

--Destroy GUI

Destroy=Instance.new("TextButton",GUI)

Destroy.Text="Destroy GUI"

Destroy.BackgroundTransparency=1

Destroy.Size=UDim2.new(0, 137,0, 42)

Destroy.TextSize=26

Destroy.Position=UDim2.new(0.702, 0,0.835, 0)

Destroy.TextColor3=Color3.new(0,0,0)

Destroy.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")

Destroy.MouseButton1Click:Connect(function()

GUI:Destroy()

end)

