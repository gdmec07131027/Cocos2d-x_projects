local TestUIPageViewScene = class("TestUIPageViewScene", function (  )
	return display.newScene("TestUIPageViewScene")
end)

function TestUIPageViewScene:ctor( )
	app:createGrid(self)
	app:createTitle(self, "TestUIPageViewScene")
	app:createNextButton(self)
	self:createPageView()
end

-- -   column 每一页的列数，默认为1
-- -   row 每一页的行数，默认为1
-- -   columnSpace 列之间的间隙，默认为0
-- -   rowSpace 行之间的间隙，默认为0
-- -   viewRect 页面控件的显示区域
-- -   padding 值为一个表，页面控件四周的间隙
--     -   left 左边间隙
--     -   right 右边间隙
--     -   top 上边间隙
-- -   bottom 下边间隙
-- -   bCirc 页面是否循环,默认为false
-- self.pv = cc.ui.UIPageView.new {
--         -- bgColor = cc.c4b(200, 200, 200, 120),
--         -- bg = "sunset.png",
--         viewRect = cc.rect(80, 80, 780, 480),
--         column = 3, row = 3,
--         padding = {left = 20, right = 20, top = 20, bottom = 20},
--         columnSpace = 10, rowSapce = 10}
--         :onTouch(handler(self, self.touchListener))
--         :addTo(self)

function TestUIPageViewScene:createPageView()
	print("Hello")
	self.pv = cc.ui.UIPageView.new{
	-- bgColor = cc.c4b(200, 200, 200, 120),
	-- bg = "sunset.png",
	viewRect = cc.rect(200, 100, 780, 480),
	column = 3, row = 3 ,
	padding = { left = 20, right = 20, top = 20, bottom = 20},
	columnSpace = 10, rowSpace = 10}
	:onTouch(handler(self, self.touchListener))
	:setCirculatory(true)
	:addTo(self)

	for i = 1, 27 do 
		local item = self.pv:newItem()
		local content = display.newColorLayer(
			cc.c4b(math.random(250),
				math.random(250),
				math.random(250),
				250))
		content:setContentSize(240, 140)
		content:setTouchEnabled(false)
		item:addChild(content)
		self.pv:addItem(item)
	end
	self.pv:reload()
end

function TestUIPageViewScene:touchListener(event)
	dump(event, "TestUIPageViewScene - event:")
	print(event.item)
	if 3 == event.itemPos then
        listView:removeItem(event.item, true)
    else
        -- event.item:setItemSize(120, 80)
    end
end

return TestUIPageViewScene