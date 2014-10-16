local TestSingleTouch2Scene = class("TestSingleTouch2Scene", function ()
	return display.newScene("TestSingleTouch2Scene")
end)

function TestSingleTouch2Scene:ctor()
	app:createTitle(self, "TestSingleTouch2Scene")
	app:createNextButton(self)
end

return TestSingleTouch2Scene
	