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
Text.Text="Tower Of Hell GUI"
Text.BackgroundTransparency=1
Text.Position=UDim2.new(0.296, 0,0, 0)
Text.TextSize=44
Text.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")
Text.TextColor3=Color3.new(0,0,0)
Text.Size=UDim2.new(0, 200,0, 50)
--AutoWin Button
Autowin=Instance.new("TextButton",GUI)
Autowin.BackgroundColor3=Color3.new(0,0,0)
Autowin.BackgroundTransparency=0.9
Autowin.Position=UDim2.new(0.187, 0,0.197, 0)
Autowin.Text="Autowin"
Autowin.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")
Autowin.TextSize=40
Autowin.TextColor3=Color3.new(0, 0, 0)
Autowin.Size=UDim2.new(0, 308,0, 53)
AutowinCorner=Instance.new("UICorner",Autowin)
--God Mode button
GodMode=Autowin:Clone()
GodMode.Text="GodMode"
GodMode.Position=UDim2.new(0.187, 0,0.433, 0)
GodMode.Parent=GUI
--God Mode button logic
GodMode.MouseButton1Click:Connect(function()
  game:GetService("ReplicatedStorage").GameValues.killbricksDisabled.Value=true
end)  
--GetAllItems Button
GetAllItems=Autowin:Clone()
GetAllItems.Text="Get All Items"
GetAllItems.Position=UDim2.new(0.187, 0,0.673, 0)
GetAllItems.Parent=GUI
--TG Text
TGText=Instance.new("TextLabel",GUI)
TGText.Text="TG:@HaxScripts"
TGText.BackgroundTransparency=1
TGText.TextSize=24
TGText.Size=UDim2.new(0, 200,0, 50)
TGText.Position=UDim2.new(-0.039, 0,0.819, 0)
TGText.TextColor3=Color3.new(0,0,0)
TGText.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")
--Autowin button logic
Autowin.MouseButton1Click:Connect(function()
  KillBricksDisabled=game.ReplicatedStorage.GameValues.killbricksDisabled
  KillBricksDisabled.Value=true
  
  TweenService = game:GetService("TweenService")
  TweenInfo = TweenInfo.new(3,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
  
  Tween1 = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo, {CFrame = CFrame.new(workspace.tower.sections.finish.center.Position)})
  Tween2 = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo, {CFrame = CFrame.new( workspace.tower.sections.finish.exit.carpet.Position + Vector3.new(0, 5, 0))})
  Tween1:Play()
  Tween1.Completed:Connect(function()
    Tween2:Play()
  end)  
    Tween2.Completed:Connect(function()
      KillBricksDisabled.Value=false
  end)
end)  
--GetAllItems button logic
GetAllItems.MouseButton1Click:Connect(function()
      for X, item in ipairs (game:GetService("ReplicatedStorage").Assets.Gear:GetChildren()) do
      local clone = item:Clone()
      clone.Parent = game:GetService("Players").LocalPlayer.Backpack
    end
  end)
--Destroy GUI
DestroyButton=Instance.new("TextButton",GUI)
DestroyButton.Text="Destroy GUI"
DestroyButton.BackgroundTransparency=1
DestroyButton.Size=UDim2.new(0, 137,0, 42)
DestroyButton.TextSize=24
DestroyButton.Position=UDim2.new(0.722, 0,0.835, 0)
DestroyButton.TextColor3=Color3.new(0,0,0)
DestroyButton.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")
DestroyButton.MouseButton1Click:Connect(function()
  GUI:Destroy()
end)
