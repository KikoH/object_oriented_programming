class Rover
	
	attr_accessor :x, :y, :direction
	current_positon = " "
	def initialize(x=0, y=0, direction="N")
		@x = x
		@y = y
		@direction = direction
	end

	def to_s
		"#{@x}, #{@y}, #{@direction}"
	end

	def read_instructions(instruction)
		if instruction == "M"
			move
		elsif instruction == "L"
			turn_left
		elsif instruction == "R"
			turn_right
		end
	end

	def move
		if @direction == "N"
			@y += 1
		elsif @direction == "W"
			@x -= 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "S"
			@y -= 1
		end
	end

	def turn_right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "W"
			@direction = "N"
		end
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "E"
			@direction = "N"
		end
	end
end

rover = Rover.new
puts "Rover is facing #{rover.direction} and X= #{rover.x} and Y= #{rover.y}"
while true
order = gets.chomp
rover.read_instructions(order)
puts "Rover is facing #{rover.direction} and X= #{rover.x} and Y= #{rover.y}"
puts rover
end

