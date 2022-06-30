function onCreate() -- Add The Flicker

	makeAnimatedLuaSprite('power', 'power', -230, 300)
	
	-- Properties
	setScrollFactor('power', 1.0, 1.0)
	scaleObject('power', 1.0, 1.0)
	
	-- Animations
	addAnimationByPrefix('power', 'flick', 'power up', 24, false)
	
end

function onEvent(name, value1, value2)
	if name == 'Power Up' then
--	runTimer('flicked', 1.5, 1)
	addLuaSprite('power', true)
	playSound('power up', 0.5)
	objectPlayAnimation('flick', true)
	end
end
	
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'flicked' then
	setProperty('BendyFlicker.visible', false)
	end
end