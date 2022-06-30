local floaty = 41.82
--i downloaded this script dodge and put everything that needs so idk who made the orig
function onCreate()
    --variables
    
    Round2Dodged = false;
    Round2canDodge = false;
    DodgeTimer2 = 0;
    
    
    makeAnimatedLuaSprite('out', 'Roundabout', 1250, 1250); --and 
    addAnimationByPrefix('out', 'spin', 'Roundabout instance 1', 24, true) --tbh i like this mod SO MUCH i like how they did this best mod for me No.1
    objectPlayAnimation('out', 'spin', true)
    addLuaSprite('out', true)
    setBlendMode('out', 'add')
    scaleObject('out', 1.7, 1.7)
    setProperty('out.alpha', 0)
	
end

function onEvent(name, value1, value2)
    if name == "Round2ATTACK" then
    --Get Dodge time
    DodgeTimerROUND = (value1);
    
	RoundcanDodge = true;
	runTimer('ROUNDBACK', DodgeTimerROUND);
	characterPlayAnim('dad', 'hadokenROUND', true);
    setProperty('dad.specialAnim', true);
    doTweenX('hadoen2', 'out', -4300, 4.9, 'quadInOut')
    cameraSetTarget('dad');
    --doTweenX('hadoen', 'hadoken', -1500, 0.5, 'linear')
	end
end

function onUpdate()
   if RoundcanDodge == true and keyJustPressed('right') then
   
   Round2Dodged = true;
   
   setProperty('boyfriend.specialAnim', true);
   setProperty('boyfriend.specialAnim', true);
   cameraSetTarget('boyfriend');
   RoundcanDodge = false
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'ROUNDBACK' and Round2Dodged == false then
   setProperty('health', 0);
   
   elseif tag == 'ROUNDBACK' and Round2Dodged == true then
   characterPlayAnim('boyfriend', 'dodge', true);
   playSound('dodge');
   DodgedRound = false
   end
end

function onTweenCompleted(tag)
      if tag == 'hadoen2' then
           removeLuaSprite('out', false)
    end
end