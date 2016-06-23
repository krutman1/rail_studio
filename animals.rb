=begin
class Dog 
	def make_up_name
		@name="Sandy"
	end

	def talk 
		puts "#{@name} says Bark!"
	end

	def move(destination)
		puts "#{@name} runs to #{destination}."
	end

	def make_up_age
		@age=5
	end

	def report_age
		puts "#{@name} is #{@age} years old."
	end
end

dog=Dog.new
dog.make_up_name
dog.move("yard")
dog.make_up_age
dog.report_age


class Dog
	def name=(new_value)
		@name =new_value
	end
	def name
		@name
	end
	def age=(new_value)
		@age=new_value 
	end
	def age
		@age
	end
	def report_age 
		puts "#{@name} is #{age} years old."
	end
end
 fido=Dog.new
 fido.name ="Fido"
 fido.age=2
 rex=Dog.new
 rex.age=3
 rex.name="Rex"
 fido.report_age
 rex.report_age

 =end
