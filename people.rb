#Parent Class
class Person
	attr_accessor :name
	def greeting
		puts "Hi my name is #{@name}"
	end
end


#Class inheriting from Person
class Student < Person
	def learn
		puts "I get it"
	end
end
#Class inheriting from Person
class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end

#Instantiating instructor and student and calling greet method from Person class
instructor = Instructor.new
instructor.name = "Chris"
instructor.greeting

student = Student.new
student.name = "Christina"
student.greeting

#Calling the teach & learn methods
instructor.teach
student.learn

#Calling teach on studen would not work because it is local to the instructor method
student.teach