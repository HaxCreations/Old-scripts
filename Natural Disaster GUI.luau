Player=game.Players.LocalPlayer
PlayerGui=Player.PlayerGui
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
Text.Text="Natural Disaster GUI"
Text.BackgroundTransparency=1
Text.Position=UDim2.new(0.296, 0,0, 0)
Text.TextSize=46
Text.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")
Text.TextColor3=Color3.new(0,0,0)
Text.Size=UDim2.new(0, 200,0, 50)
--MainButton
Main=Instance.new("TextButton",GUI)
Main.BackgroundColor3=Color3.new(0,0,0)
Main.BackgroundTransparency=0.9
Main.Position=UDim2.new(0.187, 0,0.224, 0)
Main.Text="Main"
Main.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")
Main.TextSize=40
Main.TextColor3=Color3.new(0, 0, 0)
Main.Size=UDim2.new(0, 308,0, 53)
MainCorner=Instance.new("UICorner",Main)
--TeleportsButton
Teleports=Main:Clone()
Teleports.Text="Teleports"
Teleports.Position=UDim2.new(0.187, 0,0.5, 0)
Teleports.Parent=GUI
--TG Text:
TGText=Instance.new("TextLabel",GUI)
TGText.Text="TG:@HaxScripts"
TGText.BackgroundTransparency=1
TGText.TextSize=25
TGText.Size=UDim2.new(0, 200,0, 50)
TGText.Position=UDim2.new(0.294, 0,0.681, 0)
TGText.TextColor3=Color3.new(0,0,0)
TGText.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")--MainBack button
Back1=Instance.new("TextButton",GUI)
Back1.Text="Back"
Back1.BackgroundTransparency=1
Back1.BackgroundColor3=Color3.new(0,0,0)
Back1.TextSize=24
Back1.TextColor3=Color3.new(0,0,0)
Back1.Position=UDim2.new(-0.112, 0,0.819, 0)
Back1.Size=UDim2.new(0, 200,0, 50)
Back1.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")
Back1.Visible=false
--Main button logic 
Main.MouseButton1Click:Connect(function()
  Teleports.Visible=false
  Main.Visible=false
  Back1.Visible=true
  Text.Text="Main"
  --AutoFarm button
  Auto=Instance.new("TextButton",GUI)
  Auto.Text="AutoFarm"
  Auto.TextSize=40
  Auto.TextColor3=Color3.new(0,0,0)
  Auto.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")
  Auto.Size=UDim2.new(0, 308,0, 53)
  Auto.Position=UDim2.new(0.187, 0,0.224, 0)
  Auto.BackgroundTransparency=0.9
  Auto.BackgroundColor3=Color3.new(0,0,0)
  AutoCorner=Instance.new("UICorner",Auto)
  Auto.MouseButton1Click:Connect(function()
    if Auto.Text=="AutoFarm" then
      Auto.Text="Disable AutoFarm"
    elseif Auto.Text=="Disable AutoFarm" then
      Auto.Text="AutoFarm"
    end  
    while Auto.Text=="Disable AutoFarm" do
      task.wait(5)
      Player.Character:MoveTo(Vector3.new(-280,180,340))      
    end
  end)--NoFallDamage button
  NoDamage=Auto:Clone()
  NoDamage.Text="No Fall Damage"
  NoDamage.Position=UDim2.new(0.187, 0,0.5, 0)
  NoDamage.Parent=GUI
  NoDamage.MouseButton1Click:Connect(function()
    HRP = Player.Character:WaitForChild("HumanoidRootPart")
    game:GetService("RunService").Stepped:Connect(function()
      if HRP.Velocity.Y < -50 then
        HRP.Velocity = Vector3.new(HRP.Velocity.X, -10, HRP.Velocity.Z)
      end
    end)
  end)
end)  
Back1.MouseButton1Click:Connect(function()
  Back1.Visible=false
  Text.Text="Natural Disaster GUI"
  Auto:Destroy()
  NoDamage:Destroy()
  Main.Visible=true
  Teleports.Visible=true
end)
--Teleports button logic
Teleports.MouseButton1Click:Connect(function()
  Back2=Instance.new("TextButton",GUI)
  Back2.BackgroundTransparency=1
  Back2.BackgroundColor3=Color3.new(0,0,0)
  Back2.TextSize=24
  Back2.TextColor3=Color3.new(0,0,0)
  Back2.Position=UDim2.new(-0.112, 0,0.819, 0)
  Back2.Size=UDim2.new(0, 200,0, 50)
  Back2.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")
  Back2.Text="Back"
  Text.Text="Teleports"
  Main.Visible=false
  Teleports.Visible=false
  Back2.MouseButton1Click:Connect(function()
    Back2:Destroy()
    Text.Text="Natural Disaster GUI"
    Teleports.Visible=true
    Main.Visible=true
    Lobby:Destroy()
    Island:Destroy()
  end)--Lobby Button
  Lobby=Instance.new("TextButton",GUI)
  Lobby.Text="Lobby"
  Lobby.TextSize=40
  Lobby.BackgroundColor3=Color3.new(0,0,0)
  Lobby.BackgroundTransparency=0.9
  Lobby.Size=UDim2.new(0, 308,0, 53)
  Lobby.Position=UDim2.new(0.187, 0,0.224, 0)
  Lobby.TextColor3=Color3.new(0,0,0)
  Lobby.FontFace=Font.new("rbxasset://fonts/families/Zekton.json")
  LobbyCorner=Instance.new("UICorner",Lobby)
  Lobby.MouseButton1Click:Connect(function()
    Player.Character:MoveTo(Vector3.new(-280,180,340))
  end)
  --Island button
  Island=Lobby:Clone()
  Island.Text="Island"
  Island.Position=UDim2.new(0.187, 0,0.5, 0)
  Island.Parent=GUI
  Island.MouseButton1Click:Connect(function()
    Player.Character:MoveTo(Vector3.new(0,50,0))
  end)
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
