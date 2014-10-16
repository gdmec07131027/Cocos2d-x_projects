local TestMultiTouches3Scene = class("TestMultiTouches3Scene", function ()
	return display.newScene()
end)

function TestMultiTouches3Scene:ctor()
	app:createTitle(self, "TestMultiTouches3Scene")
	app:createNextButton(self)
end

return TestMultiTouches3Scene

	