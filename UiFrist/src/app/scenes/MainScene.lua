local BubbleButton = require("app/views/BubbleButton")
local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
    local button = cc.ui.UIPushButton.new({
        image = "#MenuSceneMoreGamesButton.png",
        prepare = function()
        end,
        listener = function()
            print("我爱上离婚的女人")
        end
        })
        :align(display.CENTER, display.left + 150, display.bottom + 300)
        :addTo(self)
end

function MainScene:onEnter()
end

function MainScene:onExit()
end

return MainScene
