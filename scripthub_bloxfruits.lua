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

Tab:AddButton({
	Name = "LuaQLeak Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaQLeak/Scripts/main/Blox-Fruits-UpdateV1"))()
end    
})

Tab:AddButton({
	Name = "HOHO Hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end    
})

Tab:AddButton({
	Name = "Neva Hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'))()
end    
})

Tab:AddButton({
	Name = "Hyper Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))()
end    
})
--7/25

Tab:AddButton({
	Name = "Ripper Hub v2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/RIPPERHUBV2.lua"))()
end    
})

Tab:AddButton({
	Name = "Playback X Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt"))()
end    
})

Tab:AddButton({
	Name = "Mid Hub",
	Callback = function()
		_G.Color = Color3.fromRGB(160, 1, 228)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/MIDHUBB/ALL/main/" .. tostring(game.PlaceId) .. ".lua"))()
end    
})

--10/25

Tab:AddButton({
	Name = "Mukuro Hub",
	Callback = function()
		loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
end    
})

Tab:AddButton({
	Name = "sinret Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/bf2", true))()
end    
})

Tab:AddButton({
	Name = "Retro Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/spectrumok/RetroHub/main/Main.lua"))()
end    
})


--13/25

Tab:AddButton({
	Name = "hxllow Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/hxllow"))()
end    
})


Tab:AddButton({
	Name = "fusion 1 Hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/SHAREHACK/script/main/fusion1'))()
end    
})

Tab:AddButton({
	Name = "BaconLord Hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/BaconLords/shit-with-sugar/main/Bacon%20Hub%20Main%20Loader'))()
end    
})

--16/25

Tab:AddButton({
	Name = "mhee Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/BunnySalf/Hentai/main/MHEEHUB",true))()
end    
})

--17/25

Tab:AddButton({
	Name = "Magma Hub",
	Callback = function()
		loadstring(game:HttpGet("https://hypernite.xyz/Backup/MagmaHub/script.lua"))()
end    
})

Tab:AddButton({
	Name = "Sky Hub",
	Callback = function()
		 -- SETTING THEME --
 _G.MainI = Color3.fromRGB(17 ,110, 206)
 _G.MainII = Color3.fromRGB(14, 16 ,22)
 _G.ButtonI = Color3.fromRGB(52 ,68, 255)
 _G.ButtonII = Color3.fromRGB(10, 30 ,4)
 _G.BlackGround = Color3.fromRGB(0, 0 ,0)
 -- SCRIPT GAME --
 loadstring(game:HttpGet("http://skyhubking.xyz/script/free_script/main%20game.lua"))()
end    
})


Tab:AddButton({
	Name = "Blox Fruits V2",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/yDF2asTX",true))()
end    
})

--final 20/25


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
