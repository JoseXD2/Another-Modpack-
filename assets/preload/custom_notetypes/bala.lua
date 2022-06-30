function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do	
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'bala' then

		end
	end

end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == "bala" then
		characterPlayAnim('gf', 'sad', true);
		        triggerEvent('Play Animation', 'BF NOTE DOWN MISS', 1 );
			elseif direction==1 then
					triggerEvent('Play Animation', 'BF NOTE UP MISS', 1);
			elseif direction==2 then
					triggerEvent('Play Animation', 'BF NOTE UP MISS', 1);
			elseif direction==3 then
					triggerEvent('Play Animation', 'BF NOTE RIGHT MISS', 1);
			if direction==0 then
			playSound('missnote1')
			playSound('missnote2')
			playSound('missnote3')
                        end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == "bala" then
		triggerEvent('Screen Shake', "0.40, 0.0090", 0)
		characterPlayAnim('gf', 'scared', true);
		triggerEvent('Play Animation', 'bala1', 0);
			if direction==0 then
					triggerEvent('Play Animation', 'bala1', 1 );
			elseif direction==1 then
					triggerEvent('Play Animation', 'bala2', 1);
			elseif direction==2 then
					triggerEvent('Play Animation', 'bala1', 1);
			elseif direction==3 then
					triggerEvent('Play Animation', 'bala2', 1);
			if direction==0 then
			
                        end
                 end
          end
end
