local TestUISliderScene = class("TestUISliderScene", function ( )
	return display.newScene("TestUISliderScene")
end)

function TestUISliderScene:ctor( )
	app:createNextButton(self)
	print("TestUISliderScene")
end

return TestUISliderScene