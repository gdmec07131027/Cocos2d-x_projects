local TestMultiTouches1Scene = class("TestMultiTouches1Scene", function()
	return display.newScene("TestMultiTouches1Scene")
end)

function TestMultiTouches1Scene:ctor()
	app:createTitle(self, "TestMultiTouches1Scene")
	app:createNextButton(self)
end

	

return TestMultiTouches1Scene

