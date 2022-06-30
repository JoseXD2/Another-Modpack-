
function onEvent(name, value1, value2)

	if name == "Health Drain" then
		function opponentNoteHit(id, direction, type, sustain)
			if type == 'Doof Sings' then
				if getProperty('health') > (value2 / 50) and getProperty('health') < (value1 / 50) then 
					setProperty('health', (value2 / 50))
				else if  getProperty('health') > (value2 / 50) and getProperty('health') > (value1 / 50) then
					setProperty('health', getProperty('health')-(value1 / 50))
				end
				end
			end	
		end
	end	
end