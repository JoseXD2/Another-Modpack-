function onCreate()

    -- background shit

    makeLuaSprite('skyd2', 'StageD2/weebSkyDeadPixel', 300, 240);
	addLuaSprite('skyd2', false);
	scaleObject('skyd2', 7, 7);
	setLuaSpriteScrollFactor('skyd2', 0.9, 0.9);
    
    makeLuaSprite('backschoold2', 'StageD2/weebSchoolDeadPixel', 80, 180);
	addLuaSprite('backschoold2', false);
	scaleObject('backschoold2', 7, 7);
	setLuaSpriteScrollFactor('backschoold2', 0.7, 1);

    makeLuaSprite('streetd2', 'StageD2/weebStreetDeadPixel', 1, 1);
	addLuaSprite('streetd2', false);
	scaleObject('streetd2', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd2', 1, 1);

	makeLuaSprite('tresssd2', 'StageD2/weebTreesBackDeadPixel', 450, 325);
	addLuaSprite('tresssd2', false);
	scaleObject('tresssd2', 5.5, 5.5);
	setLuaSpriteScrollFactor('tresssd2', 1, 1);

	makeAnimatedLuaSprite('aaaad2', 'StageD2/weebTreesDeadPixel', 1, 220);
	addAnimationByPrefix('aaaad2', 'bruhD', 'TreesD3', 10, true);
	setGraphicSize('aaaad2', getProperty('aaaad2.width') * 8.5)
	addLuaSprite('aaaad2', false);

	makeLuaSprite('marge', 'StageD2/MargeD2', 1, 1);
	addLuaSprite('marge', false);
	setObjectCamera('marge', 'hud');
	setLuaSpriteScrollFactor('skyd2', 1, 1);

	setProperty('skyd2.antialiasing', false)
	setProperty('backschoold2.antialiasing', false)
	setProperty('streetd2.antialiasing', false)
	setProperty('tresssd2.antialiasing', false)
	setProperty('aaaad2.antialiasing', false)

end

function onBeatHit()

    objectPlayAnimation('aaaad2', 'TreesD3', true);

end