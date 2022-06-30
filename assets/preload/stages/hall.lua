function onCreate()
  --background
  makeLuaSprite('bg','hall',-195,-70)
  makeLuaSprite('bg2','waterfall',-300,-175)
  scaleObject('bg2',1.3,1.3)
  scaleObject('bg',3.4,3)
  addLuaSprite('bg2',false)
  addLuaSprite('bg',false)
end