function onCreate()
  makeLuaSprite('floor','nightmareBendy_foreground',-400,250)
  makeLuaSprite('bg','inky depths',-450,0)
  scaleObject('bg',1.2,1.2)
  setProperty('bg.alpha',0)
  scaleObject('floor',1.2,1.2)
  scaleObject('flames',3,1)
  makeAnimatedLuaSprite('flames','Fyre',150,900)
  addAnimationByPrefix('flames','idle','Penis',24,true)
  objectPlayAnimation('flames','idle',true)
  addLuaSprite('bg',false)
  addLuaSprite('flames',false)
  addLuaSprite('floor',false)
end
function onStepHit()
  if curStep==1296 then
    doTweenAlpha('bg','bg',0.6,2)
  end
  if curStep==3126 then
    doTweenY('flames','flames',250,7)
  end
  end