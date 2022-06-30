function onCreate()

    -- background shit

	makeLuaSprite('root', 'StageRoots/animatedEvilSchool', -4350, 470);
	addLuaSprite('root', false);
	scaleObject('root', 7, 7);
    setProperty('root.visible', true)
	setLuaSpriteScrollFactor('root', 0.7, 0.9);
	setProperty('root.antialiasing', false)

	makeAnimatedLuaSprite('roott', 'StageRoots/animatedEvilSchool', -695, 470);
	addAnimationByPrefix('roott', 'crazy', 'background 2 instance 10', 24, true);
	objectPlayAnimation('roott', 'background 2 instance 10', true);
	setGraphicSize('roott', getProperty('roott.width') * 7)
	addLuaSprite('roott', false);
	setProperty('roott.visible', false)
    setProperty('roott.antialiasing', false)
	setLuaSpriteScrollFactor('roott', 0.7, 0.9);

end

function onCreatePost()

	setProperty('gf.alpha', 0)

end