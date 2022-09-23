local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Lix Hub | Script Hub Bloxfruit", HidePremium = false, IntroEnabled = true, IntroText = "Lix Hub"})

--Variabels
local player = game.Players.LocalPlayer

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Vellerius",
	Callback = function()
    if game.PlaceId == 2753915549 then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Corrupt2625/pjv/main/Bloxfruit.lua", true))()
	else
		OrionLib:MakeNotification({
            Name = "Game Not Supported!",
            Content = ":/",
            Image = "rbxassetid://4483345998",
            Time = 5
        }) 	
   end
end    
})

Tab:AddButton({
	Name = "ThunderZ",
	Callback = function()
    if game.PlaceId == 2753915549 then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-05/HUB/main/Script"))()
	else
		OrionLib:MakeNotification({
            Name = "Game Not Supported!",
            Content = ":/",
            Image = "rbxassetid://4483345998",
            Time = 5
        }) 	
   end
end    
})


local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("Vellerius | Bloxfruit: Corrupt#2625")

Tab:AddLabel("ThunderZ: ZoroJuro#1937")

OrionLib:Init()
