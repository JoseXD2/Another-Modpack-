function onCreate()
	-- background shit
	makeLuaSprite('MChouse', 'MCHouse', -600, -150);
	makeLuaSprite('textbox', 'textbox', -325, 600);
	setScrollFactor('MChouse', 1, 1);
	setScrollFactor('textbox', 1, 1);
	scaleObject('MChouse', 1.5, 1.5);
	scaleObject('textbox', 1.5, 1.5);
	addLuaSprite('MChouse', false);
	addLuaSprite('textbox', true);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end