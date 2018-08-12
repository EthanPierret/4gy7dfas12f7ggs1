--[[
Simple Menu Library
by nkorth and WitheredFlame

]]--
return {
	new = function()
		return {
			items = {},
			selected = nil,
			selected2 = nil,
			active = true,
			animOffset = 0,
			animOffset2 = 0,
			loaded = false,
			xoff = 0,
			yoff = 0,
			newx,
			newy,
			xg,
			yg,
			colums = 1,
			skewed = false,
			screenh = nil,
			screenw = nil,
			load = function(self)
				self.count = 0
						for _ in pairs(self.items) do
					  	self.count = self.count + 1
						end

				self.loaded = true
			end,
			setscreen = function(self,screenh,screenw)
				self.screenh = screenh
				self.screenw = screenw
			end,
			mousepressed = function(self, xl, yl)
				if self.active == true then
				if (xl ~= nil and yl ~= nil) then
				local yt = yl
				local xt = xl
				


				xt = xl + self.xoff --+ (self.xoff*-1)*2
				yt = yt + self.yoff  --((self.count)*self.height)--)--*-1)--+(self.yoff/self.height*self.count*2))--*2

		
				
				if (yt >= self.y and yt <= (self.y+self.height*self.count)) and self.colums ~= 1 then
					self.selected2 = (math.floor(xt/(540 / self.colums))+1)
					self.selected = math.floor((yt-self.y)/self.height)+1
					self.items[self.selected][self.selected2]:action()
				end


				if (xt >= self.x and xt <= (self.x+self.width)) and self.colums == 1 then
					if (yt >= self.y and yt <= (self.y+self.height*self.count)) then
						self.selected = math.floor((yt-self.y)/self.height)+1
						self.selected2 = (math.floor(xt/(540 / self.colums))+1)
						if xt < (self.width/2 + self.x) then
						self.items[self.selected][self.selected2]:action(true)
						else
						self.items[self.selected][self.selected2]:action(false)
						end

					end
				end
				end
			end

			end,
			isskewed = function(self)
				self.skewed = true
			end,
			setoffs = function(self,x,y)
				self.xoff = x
				self.yoff = y
			end,
			setcolums = function(self, col)
			self.colums = col
			end,
			addItem = function(self, item)
				table.insert(self.items, item)
			end,

			addCol = function(self, item)
				table.insert(self.items, {item})
			end,

			updatename = function(self, id, change)
			self.items[id][1]["name"] = change

			end,
			update = function(self, dt)
				self.animOffset = self.animOffset / (1 + dt*10)
			end,
			draw = function(self, x, y, w, h, f)
				if self.active == true then
				if self.x == nil then
				self.x = x
				self.y = y
				self.width = w
				self.height = h
				self.fontsize = f
				
				end

			    
		
				local width, height, fontsize = w, h, f
				
				
				love.graphics.setColor(0,0,0, 128)
				if self.selected and self.selected2 and self.screenw then
				love.graphics.rectangle('line', (( (self.screenw)/(self.colums+1)/2) + ((( (self.screenw)/(self.colums+1)/2)*2*(self.selected2-1))*(1+(1/(self.colums-1))))) - (width/2)
						
						, y + height*(self.selected-1) + (self.animOffset * height), width, height)
				elseif self.colums == 1 and self.selected then
				love.graphics.rectangle('line', x, y + height*(self.selected-1) + (self.animOffset * height), width, height)
				end
				love.graphics.setNewFont(fontsize)
				for h, g in ipairs(self.items) do
					for i, item in ipairs(self.items[h]) do
						if self.selected == i then
							love.graphics.setColor(0, 0, 0)
							else
							love.graphics.setColor(0, 0, 0, 128)
						end

						if item.othernames ~= nil then

							for k, j in ipairs(item.othernames) do
								if self.screenw ~= nil then

								love.graphics.print(item.othernames[k], (( (self.screenw)/(#item.othernames+1)/2) + ((( (self.screenw)/(#item.othernames+1)/2)*2*(k-1))*(1+(1/(#item.othernames-1)))))
						
								- ((item.othernames[k]:len()*fontsize/3.9))
								,
								 y + height*(h-1) + (fontsize/2)-fontsize/4)
								end
							end
						elseif item.name ~=nil then
						love.graphics.print(item.name, x + (width/2 - item.name:len()*fontsize/3.9), y + height*(h-1) + (fontsize/2)-fontsize/4)
					end
	

				end
			end
			end
			end,
			keypressed = function(self, key)
				if self.active == true then

					if self.selected == nil then
						self.selected = 1
						key = nil
		
					end
					if self.selected2 == nil then
						self.selected2 = 1
						key = nil
		
					end
					
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
				elseif key == 'left' then
						if self.selected2 > 1 then
							self.selected2 = self.selected2 - 1
							self.animOffset2 = self.animOffset2 + 1
						else
							self.selected2 = #self.items[self.selected]
							self.animOffset2 = self.animOffset2 - (#self.items[self.selected]-1)
						end
				elseif key == 'right' then
						if self.selected2 < #self.items[self.selected] then
							self.selected2 = self.selected2 + 1
							self.animOffset2 = self.animOffset2 - 1
						else
							self.selected2 = 1
							self.animOffset2 = self.animOffset2 + (#self.items[self.selected]-1)
						end
				elseif key == 'return' then
					if self.items[self.selected][self.selected2].action then
						self.items[self.selected][self.selected2]:action(true)
					end

				end
			end
		end
		}

	end
}