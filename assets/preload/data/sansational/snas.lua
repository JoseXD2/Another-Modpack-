function onCreatePost()
precacheImage('ut/ready');
precacheImage('ut/set');
precacheImage('ut/go');
end 

function onCountdownTick(swagCounter)
if swagCounter == 1 then
	playSound('sans/countdown', 2)
	makeLuaSprite('ready', 'ut/ready', screenWidth / 2 - 369, screenHeight / 2 - 185);
	setObjectCamera('ready','other');
	doTweenAlpha('elpepe', 'ready', 0, crochet / 1000, 'cubeInOut');
	setProperty('countdownready.visible', false);
	addLuaSprite('ready', true);	
end	
if swagCounter == 2 then
	playSound('sans/countdown', 2)
	makeLuaSprite('set', 'ut/set', screenWidth / 2 - 359, screenHeight / 2 - 195);
	setObjectCamera('set','other');
	doTweenAlpha('elpepe', 'set', 0, crochet / 1000, 'cubeInOut');
	setProperty('countdownset.visible', false);
	addLuaSprite('set', true);
end	
if swagCounter == 3 then
	playSound('sans/countdown finish', 2)
	makeLuaSprite('GO', 'ut/go', screenWidth / 2 - 289, screenHeight / 2 - 215);
	setObjectCamera('GO','other');
	doTweenAlpha('elpepe', 'GO', 0, crochet / 1000, 'cubeInOut');
	setProperty('countdownGo.visible', false);
	addLuaSprite('GO', true);
	end
end