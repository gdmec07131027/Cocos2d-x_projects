local TestUIPageViewScene = class("TestUIPageViewScene", function (  )
	return display.newScene("TestUIPageViewScene")
end)

function TestUIPageViewScene:ctor( )
	app:createNextButton(self)
	print("TestUIPageViewScene")
end

return TestUIPageViewScene