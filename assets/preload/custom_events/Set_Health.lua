-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Set Health' then
		amount = tonumber(value1);
		setProperty('health', amount);
	end
end