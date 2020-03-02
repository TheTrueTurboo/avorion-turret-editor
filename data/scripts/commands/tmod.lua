
function execute(PlayerID, Command, Action, ...)

	if(not onServer())
	then return end

	Player(PlayerID)
	:removeScript("mods/DccTurretEditor/Commands/TurretModding")

	Player(PlayerID)
	:addScriptOnce("mods/DccTurretEditor/Commands/TurretModding",Action,...)

	return 0, "", ""
end

function getDescription()
	return "Activates turret editor"
end

function getHelp()
	return "Activates turret editor. Usage:\n/tmod\n"
end
