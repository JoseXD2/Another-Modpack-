function onEvent(name, value1, value2)
    if name == "AlarmFlash" then
        makeLuaSprite('flash2', '', 0, 0);
        makeGraphic('flash2',1280,720,'FF0000')
		doTweenAlpha('flTf2','flash2',0,0.3,'linear')
        addLuaSprite('flash2', true);
        setLuaSpriteScrollFactor('flash2',0,0)
        setProperty('flash2.scale.x',2)
        setProperty('flash2.scale.y',2)
        setProperty('flash2.alpha',0.4)
        setProperty('flash2.alpha',0.6)
        doTweenAlpha('flTw2','flash2',0,0.3,'linear')
	end
end

