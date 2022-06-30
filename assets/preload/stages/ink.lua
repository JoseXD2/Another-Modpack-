function onCreate()

	makeLuaSprite('Background0', 'bg0', -570, -475)
	addLuaSprite('Background0', false)
	scaleObject('Background0', 2, 2);

	makeLuaSprite('Background1', 'bg1', -570, -475)
	addLuaSprite('Background1', false)
	scaleObject('Background1', 2, 2);

	makeAnimatedLuaSprite('Background5', 'bg5', -570, -475)
	addAnimationByPrefix('Background5','idle','bg5',24,true)
	objectPlayAnimation('Background5','bg5',true)
	addLuaSprite('Background5', false)
	scaleObject('Background5', 2, 2);

	makeAnimatedLuaSprite('Background6', 'bg6', -570, -475)
	addAnimationByPrefix('Background6','idle','bg6',24,true)
	objectPlayAnimation('Background6','bg6',true)
	addLuaSprite('Background6', false)
	scaleObject('Background6', 2, 2);

	makeLuaSprite('Floor', 'ground', -570, -475)
	addLuaSprite('Floor', false)
	scaleObject('Floor', 2, 2);

	makeAnimatedLuaSprite('Gaster', 'xgasterink', -180, -275)
	addAnimationByPrefix('Gaster', 'Gaster', 'Xgasterink idle dance instance', 24, true)
	addLuaSprite('Gaster', false)
	objectPlayAnimation('Gaster', 'Gaster', true)

                 close(true)

end