
local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
    local bg = display.newSprite("armature/bg.jpg", display.cx, display.cy):addTo(self)
    local scaleX = display.width / bg:getContentSize().width
    local scaleY = display.height / bg:getContentSize().height
    bg:setScaleX(scaleX)
    bg:setScaleY(scaleY)
    ccs.ArmatureDataManager:getInstance():addArmatureFileInfo( "armature/Cowboy0.png", "armature/Cowboy0.plist" , "armature/Cowboy.ExportJson" )
    local armature = ccs.Armature:create("Cowboy")
    armature:setPosition(display.left + 80, display.cy)
    armature:getAnimation():play("Fire")
    armature:setScale(-0.24,0.24)
    armature:setScale(0.24)
    
    local function callBack1()
        armature:runAction(cc.ScaleTo:create(1.0, 0.24, 0.24))
        armature:getAnimation():play("FireMax", 10)
    end
    
    local function callBack2()
        armature:runAction(cc.ScaleTo:create(1.0, -0.24, 0.24))
        armature:getAnimation():play("Fire", 10)
    end
    
    local function animationEvent(armatureback, movementType, movementId)
         local id = movementId
         if movementType == ccs.MovementEventType.loopComplete then
            if id == "Fire" then
                print("Hello Fire")
                local actionToRight = cc.MoveTo:create(2.0, cc.p(display.right - 80, display.cy))
                armatureback:stopAllActions()
                print("Hellp")
                armatureback:getAnimation():play("Walk")
                armatureback:runAction(cc.Sequence:create(actionToRight, cc.CallFunc:create(callBack1)))
                
            elseif id == "FireMax" then 
                local actionToLeft =cc.MoveTo:create(2.0, cc.p(display.left + 80, display.cy))
                armatureback:stopAllActions()
                armatureback:getAnimation():play("Walk")
                armatureback:runAction(cc.Sequence:create(actionToLeft, cc.CallFunc:create(callBack2)))
                
            end
         end
    end
    
    
    armature:getAnimation():setMovementEventCallFunc(animationEvent)
    
    self:addChild(armature)
    
end

function MainScene:onEnter()
end

function MainScene:onExit()
end

return MainScene
