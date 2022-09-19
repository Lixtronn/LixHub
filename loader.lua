local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Lix Software | Key System", HidePremium = false, SaveConfig = false, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "Welcome "..Player.Name..",",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "L"
_G.KeyInput = "string"

function MakeScript()
    if game.PlaceId == 6490016198 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lixtronn/Scripts/main/demonslayer.lua"))()
        OrionLib:Destroy()
    else
        OrionLib:MakeNotification({
            Name = "Game Not Supported!",
            Content = ":/",
            Image = "rbxassetid://4483345998",
            Time = 5
        })    
    end    
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "Script Loading...",
        Image = "rbxassetid://4483345998",
        Time = 5
    })    
end

function InvalidKeyNotification()
    OrionLib:MakeNotification({
        Name = "Invalid Key!",
        Content = "Please Enter The Correct Key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })    
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key!",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key!",
	Callback = function()
        if _G.KeyInput == _G.Key then
            CorrectKeyNotification()
            task.wait(1)
            MakeScript()
        else
            InvalidKeyNotification()
        end
  	end    
})

OrionLib:Init()




