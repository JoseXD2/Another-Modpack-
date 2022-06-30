-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Add Overlay' then
		makeLuaSprite(value1, value1, -650, -300)
		setScrollFactor(value1, value2);
		setProperty(value1.alpha, 0);
		addLuaSprite(value1, true)
	end
end