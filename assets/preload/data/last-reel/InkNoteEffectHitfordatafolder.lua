inkNumber = 0
-----------------------------------------------------------
--//For Notetype Hit//
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Ink Note' then
		--setProperty('health', getProperty('health') - 0.5); 
		--playSound('inked')
		inkNumber = inkNumber + 1
		playSound('inked')
		triggerEvent('Screen Shake','0.2,0.008','0,0')
		runTimer('minusInk', 2)
	end
end
-----------------------------------------------------------
--//Strings//
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'minusInk' then
		inkNumber = 0
	end
end
---------------------------------------
function onUpdate()
	health = getProperty('health')
	if inkNumber == 1 then
		makeLuaSprite('1', 'Damage01', -350, -180)
		setObjectCamera('1', 'other')
		--screenCenter('1', 0)
		setProperty('1.scale.x', 0.7)
		setProperty('1.scale.y', 0.7)
		setProperty('1.alpha', 1)
		addLuaSprite('1', false)
	end
	if inkNumber == 2 then
		makeLuaSprite('2', 'Damage02', -350, -180)
		setObjectCamera('2', 'other')
		--screenCenter('2', 0)
		setProperty('2.scale.x', 0.7)
		setProperty('2.scale.y', 0.7)
		setProperty('2.alpha', 1)
		addLuaSprite('2', false)
	end
	if inkNumber == 3 then
		makeLuaSprite('3', 'Damage03', -350, -180)
		setObjectCamera('3', 'other')
		--screenCenter('3', 0)
		setProperty('3.scale.x', 0.7)
		setProperty('3.scale.y', 0.7)
		setProperty('3.alpha', 1)
		addLuaSprite('3', false)
	end
	if inkNumber == 4 then
		makeLuaSprite('4', 'Damage04', -350, -180)
		setObjectCamera('4', 'other')
		--screenCenter('4', 0)
		setProperty('4.scale.x', 0.7)
		setProperty('4.scale.y', 0.7)
		setProperty('4.alpha', 1)
		addLuaSprite('4', false)
	end
	if inkNumber > 4 then
		setProperty('health', 0)
	end
	if inkNumber == 0 then
		doTweenAlpha('1t', '1', 0, 0.5, 'linear')
		doTweenAlpha('2t', '2', 0, 0.5, 'linear')
		doTweenAlpha('3t', '3', 0, 0.5, 'linear')
		doTweenAlpha('4t', '4', 0, 0.5, 'linear')
	end
end
-----------------------------------------------------------
--//Ink Note Effect Hit\\					--Script By:
												--Zoe.exe