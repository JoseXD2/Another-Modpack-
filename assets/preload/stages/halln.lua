function onCreate()
  --background
  
  if not lowQuality then
  makeAnimatedLuaSprite('bg','Nightmare Sans Stage',-300,-250)
  addAnimationByPrefix('bg','idle','Normal instance 10000',24,false)
  addAnimationByPrefix('bg','floor','Normal',24,true)
  addAnimationByPrefix('bg','wall','sd',15,false)
  objectPlayAnimation('bg','idle',true)
  scaleObject('bg',3.9,3.9)
  addLuaSprite('bg',false)
end

  if lowQuality then
  makeAnimatedLuaSprite('bg','Nightmare Sans Stage',-300,-250)
  addAnimationByPrefix('bg','idle','Normal instance 10000',24,false)
  addAnimationByPrefix('bg','floor','Normal',24,true)
  addAnimationByPrefix('bg','wall','sd',15,false)
  objectPlayAnimation('bg','idle',true)
  scaleObject('bg',3.9,3.9)
  addLuaSprite('bg',false)
  end

end

function onStepHit()
  if curStep==490 then
    objectPlayAnimation('bg','floor',true)
    end
  if curStep==512 then
    objectPlayAnimation('bg','wall',true)
  end
  if curStep==774 then
    objectPlayAnimation('bg','floor',true)
  end
  end