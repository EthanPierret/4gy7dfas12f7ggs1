--[[
Simple Menu Library
by nkorth and WitheredFlame

]]--
return {
	new = function()
		return {
			items = {},
			selected = nil,
			active = true,
			animOffset = 0,
			loaded = false,
			xoff = 0,
			yoff = 0,
			load = function(self)
				self.count = 0
						for _ in pairs(self.items) do
					  	self.count = self.count + 1
						end

				self.loaded = true
			end,
			mousepressed = function(self, xl, yl)
				local xt = xl + self.xoff
				local yt = yl + self.yoff
				if self.active == true then
				if (xt ~= nil and yt ~= nil) then
				if (xt >= self.x and xt <= (self.x+self.width)) then
					if (yt >= self.y and yt <= (self.y+self.height*self.count)) then
						self.selected = math.floor((yt-self.y)/self.height)+1
						if xt < (self.width/2 + self.x) then
						self.items[self.selected]:action(true)
						else
						self.items[self.selected]:action(false)
						end

					end
				end
				end
			end

			end,
			addItem = function(self, item)
				table.insert(self.items, item)
			end,

			updatename = function(self, id, change)
			self.items[id]["name"] = change

			end,
			update = function(self, dt)
				self.animOffset = self.animOffset / (1 + dt*10)
			end,
			draw = function(self, x, y, w, h, f)
				if self.active == true then
				self.x = x
				self.y = y
				self.width = w
				self.height = h
				self.fontsize = f
		
				local width, height, fontsize = w, h, f
				
				
				love.graphics.setColor(0,0,0, 128)
				if self.selected then
				love.graphics.rectangle('line', x, y + height*(self.selected-1) + (self.animOffset * height), width, height)
				end
				love.graphics.setNewFont(fontsize)
				for i, item in ipairs(self.items) do
					if self.selected == i then
						love.graphics.setColor(0, 0, 0)
					else
						love.graphics.setColor(0, 0, 0, 128)
					end
					love.graphics.print(item.name, x + (width/2 - item.name:len()*fontsize/3.9), y + height*(i-1) + (fontsize/2)-fontsize/4)
				end
			end
			end,
			keypressed = function(self, key)
				if self.active == true then
				if key == 'up' then
					if self.selected > 1 then
						self.selected = self.selected - 1
						self.animOffset = self.animOffset + 1
					else
						self.selected = #self.items
						self.animOffset = self.animOffset - (#self.items-1)
					end
				elseif key == 'down' then
					if self.selected < #self.items then
						self.selected = self.selected + 1
						self.animOffset = self.animOffset - 1
					else
						self.selected = 1
						self.animOffset = self.animOffset + (#self.items-1)
					end
				elseif key == 'return' then
					if self.items[self.selected].action then
						self.items[self.selected]:action()
					end

				end
			end
		end
		}

	end
}