local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Lix Hub | Script Hub A Universal Time", HidePremium = false, IntroEnabled = true, IntroText = "Lix Hub"})

--Variables
local player = game.Players.LocalPlayer

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "ama Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blackout4781/ama-hub-scripts/main/Aut"))()

end    
})

Tab:AddButton({
	Name = "TweedLeak Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/TweedLeak/Scripts/main/A-Universal-Time"))()

end    
})


Tab:AddButton({
	Name = "VoidGaster Hub",
	Callback = function()
        _G.Options = {
            ["ToggleKey"] = "Delete",
        }
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/VoidGaster/Scripts/main/" .. tostring(game.PlaceId)),true))()
end    
})

Tab:AddButton({
	Name = "ewyzu Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ewyzu/ewyzu-scripts/main/ewyzu-AUT"))()

end    
})






local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("Credits to everyone who made these hubs")

Tab:AddButton({
	Name = "My Discord Server! (click to copy link)",
	Callback = function()
		setclipboard("https://discord.com/invite/RECcSvEXrW")
end    
})
OrionLib:Init()
