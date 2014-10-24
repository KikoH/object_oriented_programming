class Rover
	attr_accessor :x, :y, :direction
	#Initializing class with x, y and direction values
	def initialize(x=0, y=0, direction="N")
		@x = x
		@y = y
		@direction = direction
	end
	#Method used to display output
	def to_s
		"#{@x}, #{@y}, #{@direction}"
	end
	#Method for handling instructions the user inputs.
	# If user wants to move then call the move method. Same for turning
	def read_instructions(instructions)
		instructions.split(//).each do |x|
		if x == "M"
			move
		elsif x == "L"
			turn_left
		elsif x == "R"
			turn_right
		end
		end
	end
	# Method used to move the rover
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
	# Method used to turn the rover right
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
	# Method used to turn the rover left
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


#Getting input for how big the grid is
$grid_x, $grid_y = gets.chomp.split
#Instantiating a new rover
rover = Rover.new
puts "Rover is facing #{rover.direction} and X= #{rover.x} and Y= #{rover.y}"
#A loop to keep taking questions from the user
# while true
	order = gets.chomp
	rover.read_instructions(order)
	puts "Rover is facing #{rover.direction} and X= #{rover.x} and Y= #{rover.y}"
	puts rover

# end

# Grid visualisation 

row_a = ["---"]*$grid_x.to_i
separator = ([""]+row_a+[""]).join('+')

$grid_y.to_i.times do |row|
	puts separator


	row_b = ["   "]*$grid_x.to_i
			if rover.y == row
				if rover.direction == "N"
					row_b[rover.x] = " ^ " 
				elsif rover.direction == "E"
					row_b[rover.x] = " > "
				elsif rover.direction == "S"
					row_b[rover.x] = " v "
				elsif rover.direction == "W"
					row_b[rover.x] = " < "
				end
			end

	puts ([""]+row_b+[""]).join('|')
end

puts separator