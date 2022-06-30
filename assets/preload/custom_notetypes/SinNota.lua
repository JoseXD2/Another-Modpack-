function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'SinNota' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SIN_assets');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'SinNota' then
		setProperty('health', -1);
	end
end