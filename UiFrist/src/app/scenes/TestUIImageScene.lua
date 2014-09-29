local TestUIImageScene = class("TestUIImageScene", function ( )
	return display.newScene("TestUIImageScene")
end)

function TestUIImageScene:ctor( )
	app:createNextButton(self)
	print("TestUIImageScene")
end

return TestUIImageScene