

local TestSingleTouch1Scene = class("TestSingleTouch1Scene", function ()
	return display.newScene("TestSingleTouch1Scene")
end)

function TestSingleTouch1Scene:ctor()
	local sprite = display.newScale9Sprite("WhiteButton.png"):pos(display.cx, display.cy):addTo(self)
	sprite:setContentSize(400, 700)
	local lable = cc.ui.UILabel.new({text = "Touch Me", 
		UILabelType = 2,
		color = cc.c3b(255, 0, 0),
		size = 24}):align(display.CENTER, 200, 350):addTo(sprite)

	-- app:createTitle(self, "TestSingleTouch1Scene")
	-- app:createNextButton(self)
	-- 开启触摸
	sprite:setTouchEnabled(true)
	-- 添加触摸函数
	sprite:addNodeEventListener(cc.NODE_TOUCH_EVENT,function (event)
		local label1 = string.format("sprite: %s x,y: %0.2f, %0.2f", event.name, event.x, event.y)
		lable:setString("label1")
		print("Hello")
		return true
	end)
end

return TestSingleTouch1Scene

