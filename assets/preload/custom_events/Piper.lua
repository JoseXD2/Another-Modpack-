function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    addCharacterToList('BFdodge', 'boyfriend')
end

function onEvent(name, value1, value2)
    if name == "Piper" then
	--Set values so you can dodge
	canDodge = true;
--120 140
--	setScrollFactor('Bones', 0.7, 1.1);
	triggerEvent('Play Animation', 'pre-attack', 'GF');
	runTimer('Died', 0.8);
	end
end

function onUpdate()
   if canDodge == true and (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('space') then
Dodged = true;
triggerEvent('Play Animation','dodge','BF');
triggerEvent('Play Animation','attack','GF');
runTimer('dodging', 0.9);
setProperty('boyfriend.specialAnim', true)
canDodge = false;
 end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Died' and Dodged == false then
setProperty('health', 0);
elseif tag == 'Died' and Dodged == true then
Dodged = false
elseif tag == 'dodging' then
  triggerEvent('Play Animation','idle','BF')
  triggerEvent('Play Animation','idle','GF')
 end
end