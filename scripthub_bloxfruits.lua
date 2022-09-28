local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Lix Hub | Script Hub Bloxfruit", HidePremium = false, IntroEnabled = true, IntroText = "Lix Hub"})

--Variables
local player = game.Players.LocalPlayer

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[scripts
loadstring(game:HttpGet("https://raw.githubusercontent.com/Natthawat69/EvilHub-FREE/main/Script.lua"))()

--]]

Tab:AddButton({
	Name = "Vellerius",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Corrupt2625/pjv/main/Bloxfruit.lua", true))()
end    
})

Tab:AddButton({
	Name = "ThunderZ",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-05/HUB/main/Script"))()
end    
})

Tab:AddButton({
	Name = "Evill Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Natthawat69/EvilHub-FREE/main/Script.lua"))()
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
