--script by APurples

songended = false

function onUpdatePost()
    if songended == false then
    setPropertyFromClass('lime.app.Application', 'current.window.title', 'vs Cassette Goon '..'SONG: '..getProperty('curSong')..' | '..getProperty('scoreTxt.text'))
    end
end
function onDestroy()
    songended = true
    setPropertyFromClass('lime.app.Application', 'current.window.title', 'vs Cassette Goon')
end

function onGameOver()
    songended = true
    setPropertyFromClass('lime.app.Application', 'current.window.title', 'vs Cassette Goon'..' SONG: '..getProperty('curSong')..' | GAMEOVER')
    return Function_Continue
end