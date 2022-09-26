local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Lix Hub | Script Hub YBA", HidePremium = false, IntroEnabled = true, IntroText = "Lix Hub"})

--Variables
local player = game.Players.LocalPlayer

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "LuaRepo v2",
	Callback = function()
    if game.PlaceId == 2809202155 then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/zakater5/LuaRepo/main/YBA/v2.lua"))()
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
	Name = "LuaRepo v3",
	Callback = function()
    if game.PlaceId == 2809202155 then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/zakater5/LuaRepo/main/YBA/v3.lua"))()
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

Tab:AddLabel("")

Tab:AddLabel("")

OrionLib:Init()
