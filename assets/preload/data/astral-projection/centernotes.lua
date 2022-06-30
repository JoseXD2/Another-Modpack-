function onCountdownStarted()
	for i = 0, 3 do
		setPropertyFromGroup('opponentStrums', i, 'x', -900);
	end
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
setPropertyFromGroup('playerStrums', 0, 'x', 115);
setPropertyFromGroup('playerStrums', 1, 'x', 265);
setPropertyFromGroup('playerStrums', 2, 'x', 905);
setPropertyFromGroup('playerStrums', 3, 'x', 1055);
end