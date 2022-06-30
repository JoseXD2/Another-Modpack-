function onEvent(name, value1, value2)
if name == 'CameraFlipAndHUDFlip' then
 triggerEvent('CameraFlipEvent', '', '', true)
 triggerEvent('CamHUDFlipEvent', '', '', true)

end
end