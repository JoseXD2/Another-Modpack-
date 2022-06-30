function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'invisible Special Sing' and not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'INVISIBLENOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
		end
	end
end