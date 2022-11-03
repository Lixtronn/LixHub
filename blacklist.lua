local player = game.Players.LocalPlayer  

  local blacklist = {
	[1234567890] = {
		Reason = "Leaking Key"
	}
}
	for i,v in pairs(blacklist) do
		if player.UserId == i then
			player:Kick([[User is blacklisted from LixHub Reason: ]].. v["Reason"])
		end
	end
