local TestSingleTouch4Scene = class("TestSingleTouch4Scene", function ()
	return display.newScene("TestSingleTouch4Scene")
end)

function TestSingleTouch4Scene:ctor()
	app:createTitle(self, "TestSingleTouch4Scene")
	app:createNextButton(self)
end	

return TestSingleTouch4Scene