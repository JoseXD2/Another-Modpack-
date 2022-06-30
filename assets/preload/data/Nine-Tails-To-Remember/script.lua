local xx = 430;
local yy = 200;
local xx2 = 820;
local yy2 = 450;
local ofs = 30;
local ofs2 = 15;
local angleshit = 0.5;
local anglevar = 0.5;
local followchars = true;
function onCreate()
	-- background shit
      
        makeLuaSprite('bg', 'bg', -600, -300);
	scaleObject('bg', 2, 2); 

        makeLuaSprite('StageBG', 'Narutobg/StageBG', -600, -300);
	scaleObject('StageBG', 2, 2);    
		
	makeAnimatedLuaSprite('glitch', 'static', -600, -300);
	scaleObject('glitch', 8, 8);
	addAnimationByPrefix('glitch', 'glitchout', 'static glitch', 24, true);
	objectPlayAnimation('glitch', 'glitchout');

        makeLuaSprite('void', 'void', -600, -300);
        scaleObject('void', 100, 100)
	addLuaSprite('void', false);
        	
end

function onStepHit()
    if curStep == 127 then
           addLuaSprite('bg', false);
	   addLuaSprite('glitch', true); -- false = add behind characters, true = add over characters
end
    if curStep == 703 then
           removeLuaSprite('bg', true)
           addLuaSprite('StageBG', false);
       --cameraShake('hud', 0.003, 0.2);
    end
end