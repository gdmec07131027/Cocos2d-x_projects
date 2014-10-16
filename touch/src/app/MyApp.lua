
require("config")
require("framework.init")

local MyApp = class("MyApp", cc.mvc.AppBase)

local scenes = {
	"TestMultiTouches1Scene",
	"TestMultiTouches2Scene",
	"TestMultiTouches3Scene",
	"TestSingleTouch1Scene",
	"TestSingleTouch2Scene",
	"TestSingleTouch3Scene",
	"TestSingleTouch4Scene"
}

function MyApp:ctor()
    MyApp.super.ctor(self)
end

function MyApp:run()
    cc.FileUtils:getInstance():addSearchPath("res/")
    self:enterScene("TestSingleTouch1Scene")
end

function MyApp:enterScene(sceneName, ...)
	self.scene = sceneName
	MyApp.super.enterScene(self, sceneName, ...)
end

function MyApp:enterNextScene()
	local index = 1
	while index <= #scenes do
		if scenes[index] == self.scene then
			break
		end
		index = index + 1
	end
	index = index + 1 
	if index > #scenes then
		index = 1
	end
	self:enterScene(scenes[index])
end

function MyApp:createTitle(scene, titleName)
	cc.ui.UILabel.new({
		text = "--"..titleName.."--",
		size = 24
		-- color = cc.c4b(255, 255, 255, 255
		})
	:align(display.CENTER, display.cx , 900)
	:addTo(scene)
end

-- function MyApp:createNextButton(scene)
-- 	cc.ui.UIPushButton.new("BlueButton.png", {scale9 = true})
-- 	:setButtonLabel(cc.ui.UILabel.new({text = "NextScene", size = 24}))
-- 	:setButtonSize(160, 40)
-- 	:addTo(scene)
-- 	:align(display.CENTER, 550, 50)
-- 	:onButtonClicked(function(event)
-- 		self:enterNextScene()
-- 	end)
-- end

return MyApp
