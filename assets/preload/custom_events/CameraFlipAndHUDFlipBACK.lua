function onEvent(name, value1, value2)
if name == 'CameraFlipAndHUDFlipBACK' then
 triggerEvent('CameraFlipBackEvent', '', '', true)
 triggerEvent('CamHUDFlipBackEvent', '', '', true)

end
end