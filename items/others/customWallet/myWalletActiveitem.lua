function init()
	self.interactData = config.getParameter('interactData')
	--object.setInteractive(true)
end

function activate(fireMode, shiftHeld)
	activeItem.interact("ScriptPane", self.interactData, activeItem.ownerEntityId())
end