local TestMultiTouches2Scene = class("TestMultiTouches2Scene", function ()
	return display.newScene()
end)

function TestMultiTouches2Scene:ctor()
	app:createTitle(self, "TestMultiTouches2Scene")
	app:createNextButton(self)
end

return TestMultiTouches2Scene

	