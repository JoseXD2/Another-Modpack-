function onCreate()
	-- background shit

	makeLuaSprite('bg','',-900,-900)
	makeGraphic('bg',4000,4000,'ffffff')
	addLuaSprite('bg',false)

	makeLuaSprite('spaceBG', 'skeld/space lol', -100, 0);
        scaleObject('spaceBG', 2, 2)
	setLuaSpriteScrollFactor('spaceBG', 0.1, 0.1);
	addLuaSprite('spaceBG', false)

	makeLuaSprite('deadMong', 'skeld/dead among', 300, 100);
	setLuaSpriteScrollFactor('deadMong', 0.2, 0.2);
	addLuaSprite('deadMong', false)

	makeLuaSprite('stationBG', 'skeld/station', -600, -290);
        scaleObject('stationBG', 2, 2)
	setLuaSpriteScrollFactor('stationBG', 0.5, 0.78);
	addLuaSprite('stationBG', false)

	makeLuaSprite('floorBG', 'skeld/among floor', -350, 550);
        scaleObject('floorBG', 2, 2)
	setLuaSpriteScrollFactor('floorBG', 0.96, 0.96);
	addLuaSprite('floorBG', false)

	makeLuaSprite('midTable', 'skeld/middle table', 20, 500);
	setLuaSpriteScrollFactor('midTable', 0.9, 0.92);
	addLuaSprite('midTable', false)	

	makeLuaSprite('yellowDied', 'skeld/dead yellow', -250, 600);
	setLuaSpriteScrollFactor('yellowDied', 0.96, 0.99);
	addLuaSprite('yellowDied', false)

	makeLuaSprite('lightFG', 'skeld/light', -600, -1100);
        scaleObject('lightFG', 2, 2)
	setLuaSpriteScrollFactor('lightBG', 1.1, 1.1);
	addLuaSprite('lightFG', true)	
	setBlendMode('lightFG','add')

end