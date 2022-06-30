function onCreate()
	-- background
	makeLuaSprite('BG-00', 'cup/BG-00', -820, -400);
	setLuaSpriteScrollFactor('BG-00', 0.1, 0.1);
	scaleObject('BG-00',3,3)
	makeLuaSprite('BG-01', 'cup/BG-01', -820, -400);
	setLuaSpriteScrollFactor('BG-01', 0.3, 0.3);
	scaleObject('BG-01',3,3)
	makeLuaSprite('BG-Ground', 'cup/BG-Ground', -1150, -900);
	scaleObject('BG-Ground',4,4)
	addLuaSprite('BG-00', false);
    addLuaSprite('BG-01', false);
	addLuaSprite('BG-Ground', false);
	makeAnimatedLuaSprite('camera','cup/oldtimey',0,0)
    scaleObject('camera',4,4)
    addAnimationByPrefix('camera','idle','Cupheadshit_gif instance 1',24,true)
    objectPlayAnimation('camera','idle',true)
    setObjectCamera('camera','hud')
    addLuaSprite('camera',true)
	end