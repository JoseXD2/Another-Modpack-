function onCreate()
	precacheImage('tails')
	precacheImage('tails2')
	makeAnimationList();

	makeAnimatedLuaSprite('bg','console',-400,-170)addAnimationByPrefix('bg','dance','Background Moving',24,true)
    objectPlayAnimation('bg','dance',false)
    setScrollFactor('bg', 1, 1);
		
	makeAnimatedLuaSprite('tail', 'tails', -501, -70); -- tails
	addAnimationByPrefix('tail', 'idle', 'idle', 12, false)
	addAnimationByPrefix('tail', 'singLEFT', 'left', 12, false)
	addAnimationByPrefix('tail', 'singDOWN', 'down', 12, false)
	addAnimationByPrefix('tail', 'singUP', 'up', 12, false)
	addAnimationByPrefix('tail', 'singRIGHT', 'right', 12, false)
	addAnimationByPrefix('tail', 'fly', 'fly', 12, false)
	addAnimationByPrefix('tail', 'skid', 'skid', 12, false)
	setScrollFactor('tail', 1, 1);
	setProperty('tail.alpha', 0);
	setProperty('tail.antialiasing', false)

	makeAnimatedLuaSprite('tail2', 'tails2', -501, -70); -- eduardo punches john, cry about it =l
	addAnimationByPrefix('tail2', 'comeon', 'comeon', 12, false)
	setScrollFactor('tail2', 1, 1);
	setProperty('tail2.alpha', 0);
	setProperty('tail2.antialiasing', false)

	addLuaSprite('bg', false);
	addLuaSprite('tail', false);
	scaleObject('tail', 10, 10);
	addLuaSprite('tail2', false);
	scaleObject('tail2', 10, 10);
end

function onBeatHit()
	if curBeat == 156 then
		setProperty('tail2.alpha', 1);
		objectPlayAnimation('tail2', 'comeon', true)
	end
	if curBeat == 160 then
		removeLuaSprite('tail2')
		setProperty('tail.alpha', 1);
	end
	if curBeat % 2 == 0 and curStep > 160 then
		objectPlayAnimation('tail', 'idle', true);
	end
end
--tails shit
--script by Shadow Mario, Kevin Kuntz and other dudos
animationsList = {}
holdTimers = {tail = -1.0};
noteDatas = {tail = 0};
function makeAnimationList()
	animationsList[0] = 'singLEFT';
	animationsList[1] = 'singDOWN';
	animationsList[2] = 'singUP';
	animationsList[3] = 'singRIGHT';
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Special Sing' then
		if not isSustainNote then
			noteDatas.tail = direction;
		end	
		characterToPlay = 'tail'
		animToPlay = noteDatas.tail;
			
		playAnimation(characterToPlay, animToPlay, true);
	end
	if noteType == 'invisible Special Sing' then
		if not isSustainNote then
			noteDatas.tail = direction;
		end	
		characterToPlay = 'tail'
		animToPlay = noteDatas.tail;
			
		playAnimation(characterToPlay, animToPlay, true);
	end
end

function playAnimation(character, animId, forced)
	animName = animationsList[animId];
	--debugPrint(animName);
	if character == 'tail' then
		objectPlayAnimation('tail', animName, forced); -- this part is easily broke if you use objectPlayAnim (I have no idea why its like this)
	end
end
--tails shit ends