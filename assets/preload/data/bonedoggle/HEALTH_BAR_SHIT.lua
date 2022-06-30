function onCreate()
	--Sans HealthBar
	makeLuaSprite('sansHB', 'sanshealthbar', 0, 0)
	setObjectCamera('sansHB', 'hud')
	
	addLuaSprite('sansHB', true)
end

function onCreatePost()
    setProperty('sansHB.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))

    setProperty('sansHB.x', getProperty('healthBar.x') - 18)

    setProperty('sansHB.angle', getProperty('healthBar.angle'))
    setProperty('sansHB.y', getProperty('healthBar.y') - 6)
    setObjectOrder('sansHB', 4)
	setObjectOrder('healthBar', 3)
	setObjectOrder('healthBarBG', 2)
	setProperty('healthBarBG.visible', false)
	setProperty('healthBar.scale.x', 0.95)
	setProperty('healthBar.scale.y', 2)
	setProperty('healthBar.x', getProperty('healthBar.x') + 20)
	setProperty('health.y', getProperty('healthBar.y') + 10)
end

function onUpdate()
	setProperty('iconP1.alpha', 0)
	setProperty('iconP2.alpha', 0)
	setProperty('scoreTxt.visible', false)
	setProperty('healthBar.flipX', true)
end

----Never Gonna Give You Up