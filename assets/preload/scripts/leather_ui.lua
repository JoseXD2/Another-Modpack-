function onCreatePost() --colour shits
    setProperty('scoreTxt.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('timeBar.color', getColorFromHex('00FFFF'))
end
function onCreate()
  makeLuaText('scoreshits', 'Pontos: ' .. score .. ' | Erros lol: ' .. misses .. ' | Precisão: ' .. getProperty('ratingPercent') .. ' | ' .. ratingName, getProperty('healthBarBG.width'), 400, 680)
  makeLuaText('songthing', '' .. songName .. ' - ' .. difficulty, getProperty('healthBarBG.width'), 600, 0)
  setTextSize('scoreshits', 20)
  addLuaText('scoreshits')
  addLuaText('songthing')
  
  makeLuaText('sick', 'Sicks: ' .. getProperty('sicks'), getProperty('healthBarBG.width'), 0, 300)
  makeLuaText('good', 'Goods: ' .. getProperty('goods'), getProperty('healthBarBG.width'), 0, 320)
  makeLuaText('bad', 'Bads: ' .. getProperty('bads'), getProperty('healthBarBG.width'), 0, 340)
  makeLuaText('shit', 'Shits: ' .. getProperty('shits'), getProperty('healthBarBG.width'), 0, 360)
  makeLuaText('miss', 'Misses: ' .. misses, getProperty('healthBarBG.width'), 0, 380)
  addLuaText('sick')
  addLuaText('good')
  addLuaText('bad')
  addLuaText('shit')
  addLuaText('miss')
  end

function onUpdate(elapsed) --an undertale fan requested it maybe not work on custom difficultes
  setTextString('scoreshits', 'Pontos: ' .. score .. ' | Erros lol: ' .. misses .. ' | Precisão: ' .. getProperty('ratingPercent') .. ' | ' .. ratingName, getProperty('healthBarBG.width'))
  setTextString('sick', 'Sicks: ' .. getProperty('sicks'), getProperty('healthBarBG.width'))
  setTextString('good', 'Goods: ' .. getProperty('goods'), getProperty('healthBarBG.width'))
  setTextString('bad', 'Bads: ' .. getProperty('bads'), getProperty('healthBarBG.width'))
  setTextString('shit', 'Shits: ' .. getProperty('shits'), getProperty('healthBarBG.width'))
  setTextString('miss', 'Misses: ' .. misses, getProperty('healthBarBG.width'))
if difficulty == 0 then
  setTextString('songthing', '' .. songName .. ' - ' .. 'Easy', getProperty('healthBarBG.width'))
elseif difficulty == 1 then
  setTextString('songthing', '' .. songName .. ' - ' .. 'Normal', getProperty('healthBarBG.width'))
elseif difficulty == 2 then
  setTextString('songthing', '' .. songName .. ' - ' .. 'Hard', getProperty('healthBarBG.width'))
  end
end