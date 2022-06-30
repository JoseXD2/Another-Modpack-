function onCreate()
  --background
  makeLuaSprite('back','bg',-600,-150)
  setScrollFactor(1,1)
  scaleObject('back', 2, 2)
  
  makeAnimatedLuaSprite('back2','overwritelight',-300,-400)
  addAnimationByPrefix('back2','idle','overbg',24,true)
  objectPlayAnimation('back2','overbg',true)
  
  makeAnimatedLuaSprite('floor','rpgfire',200,250)
  addAnimationByPrefix('floor','idle','fire_iddle',24,true)
  objectPlayAnimation('floor','fire_iddle',true)
  
  makeAnimatedLuaSprite('floor2','rpgfire',500,200)
  addAnimationByPrefix('floor2','idle','fire_iddle',24,true)
  objectPlayAnimation('floor2','fire_iddle',true)
  
  makeAnimatedLuaSprite('floor3','rpgfire',800,200)
  addAnimationByPrefix('floor3','idle','fire_iddle',24,true)
  objectPlayAnimation('floor3','fire_iddle',true)
  
  makeAnimatedLuaSprite('floor4','rpgfire',1100,250)
  addAnimationByPrefix('floor4','idle','fire_iddle',24,true)
  objectPlayAnimation('floor4','fire_iddle',true)
  
  makeAnimatedLuaSprite('floor5','rpgfire',-100,250)
  addAnimationByPrefix('floor5','idle','fire_iddle',24,true)
  objectPlayAnimation('floor5','fire_iddle',true)
  
  makeAnimatedLuaSprite('floor6','rpgfire',-400,300)
  addAnimationByPrefix('floor6','idle','fire_iddle',24,true)
  objectPlayAnimation('floor6','fire_iddle',true)
  
  makeAnimatedLuaSprite('floor7','rpgfire',1400,300)
  addAnimationByPrefix('floor7','idle','fire_iddle',24,true)
  objectPlayAnimation('floor7','fire_iddle',true)
  
  addLuaSprite('back',false)
  addLuaSprite('back2',false)
  addLuaSprite('floor',false)
  addLuaSprite('floor2',false)
  addLuaSprite('floor3',false)
  addLuaSprite('floor4',false)
  addLuaSprite('floor5',false)
  addLuaSprite('floor6',false)
  addLuaSprite('floor7',false)
  
  close(true)
  end