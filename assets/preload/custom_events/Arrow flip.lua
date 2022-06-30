-- Event notes hooks
function onEvent(name,value1,value2)
	reversed = tonumber(value1);
	speed = tonumber(value2);
	if name == 'Arrow flip' then
		if reversed == 1 then
			noteTweenX('', 4, defaultPlayerStrumX0, speed, 'smoothStepOut')
			noteTweenX('plz', 7, defaultPlayerStrumX3, speed, 'smoothStepOut')
			noteTweenX('help', 6, defaultPlayerStrumX2, speed, 'smoothStepOut')
			noteTweenX('me', 5, defaultPlayerStrumX1 , speed, 'smoothStepOut')
		else
			noteTweenX('sanity', 4, defaultPlayerStrumX3, speed, 'smoothStepOut')
			noteTweenX('aaaaaaaaaa', 7, defaultPlayerStrumX0, speed, 'smoothStepOut')
			noteTweenX('these are pointless', 5, defaultPlayerStrumX2 , speed, 'smoothStepOut') 
			noteTweenX('whywhywhywhywhy', 6, defaultPlayerStrumX1 , speed, 'smoothStepOut')
		end
	end
end


