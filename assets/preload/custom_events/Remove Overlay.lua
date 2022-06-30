-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Remove Overlay' then
		doTweenAlpha('overlay', value1, 0, value2, 'linear');
		runTimer('overlayout', 8)
	end
end

function onTimerCompleted(tag, loops, loopsLeft) 
	if name == 'overlayout' then
		removeLuaSprite(value1, true)
	end
end