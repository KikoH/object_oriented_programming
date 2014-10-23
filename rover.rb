class Rover
	x_move = 0
	y_move = 0
	changedirection = 0
	def initialize(x=0, y=0, direction="N")
		@x = x
		@y = y
		@direction = direction
	end

	def to_s
		"#{@x}, #{@y}, #{@direction}"
	end

	# def read_instructions(instruction)
	# 	if instruction == "M"
	# 		move
	# 	end
	# end

	def move(x_move, y_move)
		if x_move != 0
		@y += x_move
		end
		if y_move != 0
		@x += y_move
	end
end

	def turn(changedirection)
		if changedirection != 0
			@direction = changedirection
		end
	 end
end

rover = Rover.new
rover.move(2, 5)
#rover.turn("E")
puts rover

