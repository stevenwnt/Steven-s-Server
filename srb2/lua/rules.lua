-- Rules command by sthb updated by kitoko

COM_AddCommand("rules", function(p)
	CONS_Printf(p, "\x87"+"Here the rule list:")
	CONS_Printf(p, "\x87"+"1st. No cussing")
	CONS_Printf(p, "\x87"+"2nd. No harassing other players if they say no then stop its not that hard")
	CONS_Printf(p, "\x87"+"3rd. If the server is lagging and you have the highest ping leave and join back later")
	CONS_Printf(p, "\x87"+"4th. Do not ask for wads here, please use this link https://goo.gl/forms/8D18IJoKQD5GH4Kw1 or look at the message when you 1st join / the motd")
	CONS_Printf(p, "\x87"+"5th. Please just read don't be dumb and act like you did not know something when it was send to you in the motd or any where else automatically")
	CONS_Printf(p, "\x87"+"6th. Do not go afk on the level MAP24: Egg Rock Zone Act 3 YOU WILL BE KICKED")
	CONS_Printf(p, "\x87"+"7th. Don't give out token locations if not asked if someone does ask only tell them using sayto only")
	CONS_Printf(p, "\x87"+"If there is something that you need, tell an admin in-game or say it at"+"\x84"+" Steven's Discord Server.")
	CONS_Printf(p, "\x87"+"You can find an invite link with the command discord or at the first message you see when you join.")
end)

addHook("ThinkFrame", do
	for p in players.iterate do
		if p.jointime == 70
			CONS_Printf(p, "\x87Welcome to Steven's multiplayer server! Join us at " .. "\x82" .. "https://discord.gg/GRtG87u" .. "\x87" .. ". Your admins are Steven, Tails, STHB, Sauna.")
			S_StartSound(nil, 40, p)
		end
		if p.jointime == 210
			CONS_Printf(p, "\x87Please read our rules with the " .. "\x80" .. "rules" .. "\x87" .. " command.")
			S_StartSound(nil, 41, p)
		end
		if p.jointime == 350 
			CONS_Printf(p, "\x87to request WADs, use this form at the link " .. "\x80" .. "https://goo.gl/forms/8D18IJoKQD5GH4Kw1" .. "\x87" .. " and open log.txt to find it!")
			S_StartSound(nil, 39, p)
		end
	end
end)
