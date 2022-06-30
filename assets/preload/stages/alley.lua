function onCreate()
	-- background shit
    makeLuaSprite('goon', 'goonlow', -420, -280);
	setScrollFactor('goon', 1, 1);
	scaleObject('goon', 2, 2);
	addLuaSprite('goon', false);

    if not lowQuality then
	makeLuaSprite('goonsky', 'goonsky', -420, -280);
	setScrollFactor('goonsky', 0.6, 0.6);

	makeLuaSprite('goonbuildings', 'goonbuildings', -420, -280);
	setScrollFactor('goonbuildings', 0.8, 0.8);
	
	makeLuaSprite('goonfloor', 'goonfloor', -420, -280);
	setScrollFactor('goonfloor', 1, 1);

	addLuaSprite('goonsky', false);
	addLuaSprite('goonbuildings', false);
	addLuaSprite('goonfloor', false);
end
end

function onUpdate(elapsed)
     if hideHud then
     setPropertyFromGroup('opponentStrums', 0, 'alpha', 0)
     setPropertyFromGroup('opponentStrums', 1, 'alpha', 0)
     setPropertyFromGroup('opponentStrums', 2, 'alpha', 0)
     setPropertyFromGroup('opponentStrums', 3, 'alpha', 0)
     setProperty('judgementCounter.visible', false)
     setProperty('healthCounter.visible', false)
     end
end

function onStepHit()
    if curStep == 1151 then
    triggerEvent('Change Character', 'bf', 'bf_cmp-alt');
    end
    if curStep == 1343 then
    triggerEvent('Change Character', 'bf', 'bf_cmp');
    end
 end