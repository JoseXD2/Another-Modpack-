-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Remove Background' then
		doTweenAlpha('bg', value1, 0, value2, 'linear');
		runTimer('bgout', 8)
	end
end

function onTimerCompleted(tag, loops, loopsLeft) 
	if name == 'bgout' then
		removeLuaSprite(value1, true)
	end
end