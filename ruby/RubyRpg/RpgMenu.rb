class RpgMenu
	def initialize(menuStr)
		@menuStr = menuStr
	end

	def show()
		@menuStr.each do |s|
			puts s
		end
		print ' > '
	end
end

class RpgMainMenu < RpgMenu
	def initialize()
		@menuStr = [
			'[S] 開始遊戲',
			'[C] 讀取進度',
			'[E] 離開遊戲',
		]
	end
end

class RpgMainMenu < RpgMenu
	def initialize()
		@menuStr = [
			'[A] 挑戰怪物',
			'[H] 住宿休息',
			'[S] 保存進度',
			'[E] 結束遊戲'
		]
	end
end