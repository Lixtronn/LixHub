local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Lix Hub | Slayer Tycoon (v1.4)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})



local plr = game.Players.LocalPlayer
local function tp(place)
plr.Character.HumanoidRootPart.CFrame = place
end

Tab:AddToggle({
	Name = "AutoCollect Money",
	Default = false,
	Callback = function(a)
        aa = a
        while aa do task.wait()
            for i,v in pairs(game:GetService("Workspace").TycoonSets.Tycoons:GetDescendants()) do
                if v:IsA"TouchTransmitter" and v.Parent.Name == "Giver" then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
                end
            end
        end
	end    
})

local function getOwner()
    for i,v in pairs(game:GetService("Workspace").TycoonSets.Tycoons:GetDescendants()) do
        if v:IsA"Model" and v:FindFirstChild("Owner") then
            if v.Owner.Value == game.Players.LocalPlayer then
                return v
            end
        end
    end
end


Tab:AddToggle({
	Name = "AutoBuy Buttons",
	Callback = function(b)
        bb = b
        while bb do task.wait()
            for i,v in pairs(getOwner().Buttons:GetDescendants()) do
                if v:IsA"TouchTransmitter" then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
                end
            end
        end	
  	end    
})

local function getTree()
    local dist, thing = math.huge
    for i,v in pairs(workspace.Map:GetChildren()) do
        if v:IsA"Model" and v:FindFirstChild("WoodHitPart") then
            if v.WoodHitPart.Transparency == 0 then
                local mag = (plr.Character.HumanoidRootPart.Position - v.WoodHitPart.Position).magnitude
                if mag < dist then 
                    dist = mag 
                    thing = v 
                end
            end
        end
    end
    return thing
end

local function hit()
    for i,v in pairs(plr.Character:GetChildren()) do
        if v:IsA"Tool" and v.Name == "Hatchet" or v.Name == "Pickaxe" then
            game:GetService("Players").LocalPlayer.Character[tostring(v.Name)].Attack:FireServer()
        end
    end
end

Tab:AddToggle({
	Name = "Tree Farm",
	Callback = function(c)
        cc = c
        while cc do task.wait()
            plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild("Hatchet"))
            tp(getTree().WoodHitPart.CFrame * CFrame.new(0,-3,0))
            hit()
        end
  	end    
})

Tab:AddToggle({
	Name = "AutoSell Logs",
	Callback = function(d)
        dd = d
        while dd do task.wait()
            tp(game:GetService("Workspace").Lumberjack.HumanoidRootPart.CFrame)
            fireproximityprompt(game:GetService("Workspace").Lumberjack.ProxPrompt)
        end
  	end    
})

local Tab = Window:MakeTab({
	Name = "Player"
})

Tab:AddSlider({
	Name = "Walkspeed",
	Min = 20,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		local Player = game.Players.LocalPlayer
if Player.Character then
 Player.Character.Humanoid.WalkSpeed = Value
end
	end    
})

Tab:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		local Player = game.Players.LocalPlayer
if Player.Character then
 Player.Character.Humanoid.JumpPower = Value
end
	end    
})
Tab:AddButton({
	Name = "Fly",
	Callback = function()
        repeat wait()
        until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
        local mouse = game.Players.LocalPlayer:GetMouse()
        repeat wait() until mouse
        local plr = game.Players.LocalPlayer
        local torso = plr.Character.Torso
        local flying = true
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 100
        local speed = 100
         
        function Fly()
        local bg = Instance.new("BodyGyro", torso)
        bg.P = 9e4
        bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.cframe = torso.CFrame
        local bv = Instance.new("BodyVelocity", torso)
        bv.velocity = Vector3.new(0,0.1,0)
        bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
        repeat wait()
        plr.Character.Humanoid.PlatformStand = true
        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
        speed = speed+.5+(speed/maxspeed)
        if speed > maxspeed then
        speed = maxspeed
        end
        elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
        speed = speed-1
        if speed < 0 then
        speed = 0
        end
        end
        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
        bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
        lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
        elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
        bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
        else
        bv.velocity = Vector3.new(0,0.1,0)
        end
        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
        until not flying
        ctrl = {f = 0, b = 0, l = 0, r = 0}
        lastctrl = {f = 0, b = 0, l = 0, r = 0}
        speed = 0
        bg:Destroy()
        bv:Destroy()
        plr.Character.Humanoid.PlatformStand = false
        end
        mouse.KeyDown:connect(function(key)
        if key:lower() == "e" then
        if flying then flying = false
        else
        flying = true
        Fly()
        end
        elseif key:lower() == "w" then
        ctrl.f = 1
        elseif key:lower() == "s" then
        ctrl.b = -1
        elseif key:lower() == "a" then
        ctrl.l = -1
        elseif key:lower() == "d" then
        ctrl.r = 1
        end
        end)
        mouse.KeyUp:connect(function(key)
        if key:lower() == "w" then
        ctrl.f = 0
        elseif key:lower() == "s" then
        ctrl.b = 0
        elseif key:lower() == "a" then
        ctrl.l = 0
        elseif key:lower() == "d" then
        ctrl.r = 0
        end
        end)
        Fly() 
  	end    
})

local Tab = Window:MakeTab({
	Name = "Teleport"
})
Tab:AddButton({
	Name = "Style Trainer",
	Callback = function()
        local player = game.Players.LocalPlayer
      		player.Character.HumanoidRootPart.CFrame = CFrame.new(-412.240906, 389.765381, 293.244049, -0.984173, -0.0356784537, 0.173581466, 3.24517524e-09, 0.979522645, 0.201334044, -0.177210256, 0.198147535, -0.964019775)
  	end    
})

Tab:AddButton({
	Name = "Lumberjack",
	Callback = function()
        local player = game.Players.LocalPlayer
      		player.Character.HumanoidRootPart.CFrame = CFrame.new(-511.077332, 388.701172, -155.37059, -0.988173664, 0.0229936726, -0.151605114, -6.35885256e-09, 0.988693058, 0.149953321, 0.153338909, 0.148179919, -0.977000475)
  	end    
})





local Tab = Window:MakeTab({
	Name = "Credits"
})

Tab:AddLabel("Lixtron#0175")





