function onCreate()

	-- skyline
	makeLuaSprite('skyline', 'hankBG/Skyline', -250, -450);

	-- city
	makeLuaSprite('city', 'hankBG/City', -300, -380);

	-- railroad
	makeLuaSprite('railroad', 'hankBG/Railroad', -300, -380);

	--ground
	makeLuaSprite('ground', 'hankBG/Ground', -400, -450);

	addLuaSprite('skyline');
	addLuaSprite('city');
	addLuaSprite('railroad');
	addLuaSprite('ground');
end