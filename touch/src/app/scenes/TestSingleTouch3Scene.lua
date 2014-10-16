local TestSingleTouch3Scene = class("TestSingleTouch3Scene", function ()
	return display.newScene("TestSingleTouch3Scene")
end)

function TestSingleTouch3Scene:ctor()
	app:createTitle(self, "TestSingleTouch3Scene")
	app:createNextButton(self)
end

return TestSingleTouch3Scene

