function onEvent(name, value1, value2) 
	if name == 'SuperCancel' then
		cancelTimer('drain');
	end
end