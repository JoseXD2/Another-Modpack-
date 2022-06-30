function onCreate()
--variables
	attacked = false; --idk why i added this lmao
	canAttack = true;
	pacifist = true;
end
function onUpdate()
if canAttack == true then
if (getMouseX('camHUD') > 1000 and getMouseX('camHUD') < 1130) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SHIFT') then
runTimer('wait', 6);
triggerEvent('Play Animation','attack','bf');
triggerEvent('Play Animation','dodge','dad');
playSound('micAttack', 0.7);
	health = getProperty('health');
	setProperty('health', health+ 0.40);
canAttack = false
  end
 end
end
function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'wait' and canAttack == false then
canAttack = true
 end
end