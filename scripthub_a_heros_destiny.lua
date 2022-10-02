local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Mewisous Hub | A Hero's Destiny", HidePremium = false, IntroEnabled = true, IntroText = "Lix Hub"})

--Variables
local player = game.Players.LocalPlayer

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Shit Boy Hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Solx69/Shit-Boy-Hub-Main/main/AHD'))()

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
