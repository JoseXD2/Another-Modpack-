function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'TintaNoteGlow' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'INKGlow_assets');

			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023'); --Default value is: 0.023, health gained on hit

			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss'

		end
	end
	function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Ink Note' then
	  playSound('inked')
	--debugPrint('Script started!')
end
end
end
