require("config")
require("framework.init")
require("framework.shortcodes")
require("framework.cc.init")

local MyApp = class("MyApp", cc.mvc.AppBase)

function MyApp:ctor()
    MyApp.super.ctor(self)
    self.scenes_ = {
    	"TestUIPageViewScene",
    	"TestUIListViewScene",
    	"TestUIScrollViewScene",
    	"TestUIImageScene",
    	"TestUIButtonScene",
    	"TestUISliderScene",
	}
end

function MyApp:run()
    cc.FileUtils:getInstance():addSearchPath("res/")
    self:enterNextScene()
end

function MyApp:enterScene(sceneName, ...)
	self.currentSceneName_ = sceneName
	self.super.enterScene(self, sceneName, ...)
end

function MyApp:enterNextScene( )
	local index = 1
	while index <= #self.scenes_ do
		if self.scenes_[index] == self.currentSceneName_ then
			break
		end
		index = index + 1 
	end
	index = index +1
	if index > #self.scenes_ then
		index = 1
	end
	self:enterScene(self.scenes_[index])
end

function MyApp:createNextButton(scene)
	-- 新建一个图片按钮
	cc.ui.UIPushButton.new("NextButton.png")
	-- 点击按钮的效果
	:onButtonPressed(function (event)
		event.target:setScale(1.2)
	end)
	-- 点击移动效果
	:onButtonRelease(function (event)
		event.target:setScale(1.0)
	end)
	-- 回调事件
	:onButtonClicked(function (event)
		self:enterNextScene()
	end)
	:align(display.RIGHT_BOTTOM, display.right - 20, 20)
	:addTo(scene)
end

function MyApp:createTitle(scene, title)
	cc.ui.UILabel.new({text = "--"..title.."--", size = 24 , color = display.COLOR_BLACK})
	:align(display.CENTER, display.cx, display.top - 20)
	:addTo(scene)
end

function MyApp:createGrid(scene)
    display.newColorLayer(cc.c4b(255, 255, 255, 255)):addTo(scene)

    for y = display.bottom, display.top, 40 do
        display.newLine(
            {{display.left, y}, {display.right, y}},
            {borderColor = cc.c4f(0.9, 0.9, 0.9, 1.0)})
        :addTo(scene)
    end

    for x = display.bottom, display.width, 40 do
    	display.newLine(
    		{{x, display.bottom}, {x, display.top}},
    		{borderColor = cc.c4f(0.9, 0.9, 0.9, 1.0)})
    	:addTo(scene)
    end
end

return MyApp
