function onEvent(name, value1, value2) 
	if name == 'SuperDrain' then
		runTimer('drain', 0.2, 0);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	setProperty('health', getProperty('health')-0.01);
end