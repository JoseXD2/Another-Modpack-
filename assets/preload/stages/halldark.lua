function onCreate()
  --background
  makeLuaSprite('bg','halldark',-400,-90)
  makeLuaSprite('bg2','battle',160,-625)
  scaleObject('bg',3.4,3)
  scaleObject('bg2',2,2)
  addLuaSprite('bg2',false)
  addLuaSprite('bg',false)
end