local defaultNotePos = {};
local spin = false;
local arrowMoveX = 0;
local arrowMoveY = 0;

function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')

        y = getPropertyFromGroup('strumLineNotes', i, 'y')

        table.insert(defaultNotePos, {x,y})
    end
end

function onEvent()
		for i = 4,7 do 
			setPropertyFromGroup('strumLineNotes', i, 'x', 
			defaultNotePos[i + 1][1] + math.floor(math.random(-150,150)))
	
			if downscroll == true then 
				ylowest = 50;
				yhighest = -150;
			else 
				ylowest = -150
				yhighest = 150;
			end
	
			setPropertyFromGroup('strumLineNotes', i, 'y', 
			defaultNotePos[i + 1][2] + math.floor(math.random(ylowest,yhighest)))
		end
	end