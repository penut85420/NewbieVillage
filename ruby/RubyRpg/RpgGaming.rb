require_relative "RpgUtils"
require_relative "RpgMenu"

class RpgGaming
	def initialize(menu, cmd)
		@menu = menu
		@cmd = cmd
	end

	def play()
		@menu.show
		c = getcmd
		while (1)
			if @cmd[c] == 0
				return
			end
			@menu.show
			c = getcmd
		end
	end
end

c = {}
c['s'] = method(:foo)
c['c'] = method(:foo2)
c['e'] = 0

r = RpgGaming.new(RpgMainMenu.new(), c)
r.play