function onEvent(name,value1,value2)
	ChartingMode = getPropertyFromClass('PlayState', 'chartingMode')

	speed = tonumber(value1)
		if speed == null then
			setProperty('cameraSpeed', 1)
		else
			speed = speed
		end

	
			if name == 'Cam Speed' then
			setProperty('cameraSpeed',value1)
				if ChartingMode then
					if speed == null then
						debugPrint('Event Triggered; Camera set to default speed.')
					
					else
							debugPrint('Event Triggered; Camera Speed set to ', speed)
					end
			
			end
			end
end