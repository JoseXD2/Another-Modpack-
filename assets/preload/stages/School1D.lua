function onCreate()

    -- background shit

    makeLuaSprite('skyd', 'StageD1/weebSky', 300, 240);
	addLuaSprite('skyd', false);
    setProperty('skyd.visible', true)
	scaleObject('skyd', 7, 7);
	setLuaSpriteScrollFactor('skyd', 0.9, 0.9);
    
    makeLuaSprite('backschoold', 'StageD1/weebSchool', 80, 180);
	addLuaSprite('backschoold', false);
    setProperty('backschoold.visible', true)
	scaleObject('backschoold', 7, 7);
	setLuaSpriteScrollFactor('backschoold', 0.7, 1);

    makeLuaSprite('streetd', 'StageD1/weebStreet', 1, 1);
	addLuaSprite('streetd', false);
	scaleObject('streetd', 8.5, 8.5);
    setProperty('streetd.visible', true)
	setLuaSpriteScrollFactor('streetd', 1, 1);

	makeLuaSprite('tresssd', 'StageD1/weebTreesBack', 450, 325);
	addLuaSprite('tresssd', false);
    setProperty('tresssd.visible', true)
	scaleObject('tresssd', 5.5, 5.5);
	setLuaSpriteScrollFactor('StageD1/tresssd', 1, 1);

	makeAnimatedLuaSprite('aaaad', 'StageD1/weebTrees', 1, 220);
	addAnimationByPrefix('aaaad', 'bruhD', 'TreesD', 10, true);
	setGraphicSize('aaaad', getProperty('aaaad.width') * 8.5)
	setProperty('aaaad.visible', true);
	addLuaSprite('aaaad', false);

	makeAnimatedLuaSprite('petal1', 'StageD1/petals', 1, 220);
	addAnimationByPrefix('petal1', 'bruuhh1', 'PETALS ALL0', 24, true);
	objectPlayAnimation('petal1', 'bruuhh1', true);
	setGraphicSize('petal1', getProperty('petal1.width') * 8.5)
	addLuaSprite('petal1', false);
	setObjectCamera('petal1', 'game');

	makeAnimatedLuaSprite('freaks', 'StageD1/bgFreaks', 1, 410);
	addAnimationByPrefix('freaks', 'freak', 'BG girls group', 24, true);
	setGraphicSize('freaks', getProperty('freaks.width') * 6.5)
	setProperty('freaks.visible', true);
	addLuaSprite('freaks', false);

	-- other

	makeLuaSprite('skyd1', 'StageD1/weebSkyD1', 300, 240);
	addLuaSprite('skyd1', false);
    setProperty('skyd1.visible', false)
	scaleObject('skyd1', 7, 7);
	setLuaSpriteScrollFactor('sky', 0.9, 0.9);
    
    makeLuaSprite('backschoold1', 'StageD1/weebSchoolD1', 80, 180);
	addLuaSprite('backschoold1', false);
    setProperty('backschoold1.visible', false)
	scaleObject('backschoold1', 7, 7);
	setLuaSpriteScrollFactor('backschoold1', 0.7, 1);

    makeLuaSprite('streetd1', 'StageD1/weebStreetD1', 1, 1);
	addLuaSprite('streetd1', false);
	scaleObject('streetd1', 8.5, 8.5);
    setProperty('streetd1.visible', false)
	setLuaSpriteScrollFactor('streetd1', 1, 1);

	makeLuaSprite('tresssd1', 'StageD1/weebTreesBackD1', 450, 325);
	addLuaSprite('tresssd1', false);
    setProperty('tresssd1.visible', false)
	scaleObject('tresssd1', 5.5, 5.5);
	setLuaSpriteScrollFactor('tresssd1', 1, 1);

	makeAnimatedLuaSprite('aaaad1', 'StageD1/weebTreesD1', 1, 220);
	addAnimationByPrefix('aaaad1', 'bruhD1', 'TreesD1', 10, true);
	setGraphicSize('aaaad1', getProperty('aaaad1.width') * 8.5)
	setProperty('aaaad1.visible', false);
	addLuaSprite('aaaad1', false);

	makeAnimatedLuaSprite('freaksd', 'StageD1/bgFreaksD1', 1, 410);
	addAnimationByPrefix('freaksd', 'freakd', 'BG girls group', 24, true);
	objectPlayAnimation('freaksd', 'BG girls group', true);
	setGraphicSize('freaksd', getProperty('freaksd.width') * 6.5)
	setProperty('freaksd.visible', false);
	addLuaSprite('freaksd', false);

	setProperty('skyd.antialiasing', false)
	setProperty('backschoold.antialiasing', false)
	setProperty('streetd.antialiasing', false)
	setProperty('tresssd.antialiasing', false)
	setProperty('aaaad.antialiasing', false)
	setProperty('freaks.antialiasing', false)
	setProperty('petal1.antialiasing', false)

	setProperty('skyd1.antialiasing', false)
	setProperty('backschoold1.antialiasing', false)
	setProperty('streetd1.antialiasing', false)
	setProperty('tresssd1.antialiasing', false)
	setProperty('aaaad1.antialiasing', false)
	setProperty('freaksd.antialiasing', false)

end

function onBeatHit()

    objectPlayAnimation('freaks', 'BG girls group', true);
	objectPlayAnimation('aaaad', 'TreesD', true);
	objectPlayAnimation('aaaad1', 'TreesD1', true);

end