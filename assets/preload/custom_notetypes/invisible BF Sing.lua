function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
	--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'invisible BF Sing' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'INVISIBLENOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
		end
	end
	--debugPrint('Script started!')
end

local BFSingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
local BFSingDir = 1
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'invisible BF Sing' then
		BFSingDir = direction
		characterPlayAnim('bf', BFSingAnims[BFSingDir+1], true)
	end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'invisible BF Sing' then
		BFSingDir = direction
		characterPlayAnim('bf', BFSingAnims[BFSingDir+1], true)
	end
end -- THANKS KEVIN KUNTZ FOR SCRIPT