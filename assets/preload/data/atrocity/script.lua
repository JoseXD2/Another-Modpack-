
function onStepHit()
	if curStep == 128 then
		doTweenAlpha('in1', 'camHUD', 1, 1)
		setProperty('cameraSpeed', 1)
	end
	if curStep == 1536 then
		if flashingLights == true then
			cameraFlash('camHUD', 'FFFFFF', 1)
		end
	end
	if curStep == 1584 then
		setProperty('cameraSpeed', 1)
	end
	if curStep == 1856 then
		setProperty('cameraSpeed', 100)
	end
	if curStep == 1921 then
		setProperty('boyfriendGroup.alpha', false)
	end
end
