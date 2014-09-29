local TestUIListViewScene = class("TestUIListViewScene", function ( )
	return display.newScene("TestUIListViewScene")
end)

function TestUIListViewScene:ctor( )
	app:createNextButton(self)
	print("TestUIListViewScene")
end

return TestUIListViewScene