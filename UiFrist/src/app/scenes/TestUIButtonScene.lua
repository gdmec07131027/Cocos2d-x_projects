local TestUIButtonScene= class("TestUIButtonScene", function ( )
	return display.newScene("TestUIButtonScene")
end)

function TestUIButtonScene:ctor( )
	app:createNextButton(self)
	print("TestUIButtonScene")
end

return TestUIButtonScene