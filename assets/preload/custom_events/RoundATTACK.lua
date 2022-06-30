local floaty = 41.82

function onCreate()
    --variables
	DodgedRound = false;
    canDodgeRound = false;
    DodgeTimeRound = 0;
    
    Round2Dodged = false;
    Round2canDodge = false;
    DodgeTimer2 = 0;
    
    
    makeAnimatedLuaSprite('out', 'Roundabout', 1250, 1330);
    addAnimationByPrefix('out', 'spin', 'Roundabout instance 1', 24, true) --tbh i like this mod SO MUCH i like how they did this best mod for me No.1
    objectPlayAnimation('out', 'spin', true)
    addLuaSprite('out', true)
    setBlendMode('out', 'add')
    scaleObject('out', 1.4, 1.4)
    setProperty('out.alpha', 0)
	
end

function onEvent(name, value1, value2)
    if name == "RoundATTACK" then
    --Get Dodge time
    DodgeTimeRound = (value1);
    
	canDodgeRound = true;
	runTimer('DiedatROUND', DodgeTimeRound);
	characterPlayAnim('dad', 'hadokenROUND', true);
    setProperty('dad.specialAnim', true);
    cameraSetTarget('dad');
    --doTweenX('hadoen', 'hadoken', -1500, 0.5, 'linear')
    
 else DodgeTimer2 = (value1);
          runTimer('ROUND2BACK', DodgeTimer2);
          Round2canDodge = true;
	
	end
end

function onUpdate()
 if getProperty('dad.animation.curAnim.curFrame') == 6 and getProperty('dad.animation.curAnim.name') == 'hadokenROUND' then
    doTweenX('hado', 'out', 2800, 1, 'quadInOut')
    setProperty('out.alpha', 1)
    playSound('shoot', 1);
   end
   setProperty('dad.specialAnim', true);
   if canDodgeRound == true and keyJustPressed('right') then
   
   DodgedRound = true;
   
   setProperty('boyfriend.specialAnim', true);
   cameraSetTarget('boyfriend');
   canDodgeRound = false
   end
   if Round2canDodge == true and keyJustPressed('right') then
   
   Round2canDodged = true;
   
   setProperty('boyfriend.specialAnim', true);
   Round2canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'DiedatROUND' and DodgedRound == false then
   setProperty('health', 0);
   
   elseif tag == 'DiedatROUND' and DodgedRound == true then
   characterPlayAnim('boyfriend', 'dodge', true);
   playSound('dodge');
   DodgedRound = false
   end
   if tag == 'ROUND2BACK' and Round2canDodged == false then
   setProperty('health', 0);
   
   elseif tag == 'ROUND2BACK' and Round2canDodged == true then
   characterPlayAnim('boyfriend', 'dodge', true);
   playSound('dodge');
   Round2canDodged = false
   end
end

function onTweenCompleted(tag)
     if tag == 'hado' then
           doTweenX('hadoen2', 'out', -4300, 4.9, 'linear')
           triggerEvent('Round2ATTACK', '0.5')
    end
      if tag == 'hadoen2' then
           removeLuaSprite('out', false)
    end
end