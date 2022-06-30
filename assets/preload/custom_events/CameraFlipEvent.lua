function onEvent(name, value1, value2)
if name == 'CameraFlipEvent' then
 --This Is For The Camera
 doTweenAngle('bruh', 'camera', 180, 0.2, 'linear')
--When The Script Started, It Will Play A Sound
playSound('THE SOUND', true)
--When The Script Started, It Will Play Animation
characterPlayAnim('dad', 'THE ANIMATION', true)

end
end