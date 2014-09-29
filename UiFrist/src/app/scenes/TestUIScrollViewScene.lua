local TestUIScrollViewScene = class("TestUIScrollViewScene", function ( )
	return display.newScene("TestUIScrollViewScene")
end)

function TestUIScrollViewScene:ctor( )
	app:createNextButton(self)
	print("TestUIScrollViewScene")
end

return TestUIScrollViewScene