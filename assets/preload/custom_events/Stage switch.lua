function onCreate() -- put the stuff here
	makeLuaSprite('eggnog', 'eggnoggers', -500, -325);
	setLuaSpriteScrollFactor('eggnog', 0.9, 0.9);
	
	makeAnimatedLuaSprite('eggnoganim', 'eggnogersanim', 225, 50);
	luaSpriteAddAnimationByPrefix('eggnoganim', 'idle', 'Gangnam style', 24, true);
	setLuaSpriteScrollFactor('eggnoganim', 1.0, 1.0);
		
end

function onEvent(name, value1, value2)
	if name == 'Crack Mind' then -- put the add lua and stuff here
	addLuaSprite('eggnog', false);
	addLuaSprite('eggnoganim', false);
	end
end