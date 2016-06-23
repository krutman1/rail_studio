class Dog
	attr_reader :name, :age
	def name=(value)
		if value ==" "
			raise "Name can't be blank"
		end
		@name=value
	end
	def age=(value)
		if value <0
			raise "An age of #{value} is invalid"
		end
		@age=value
	end
	def move(destination)
		puts "#{@name} says bark"
	end
	def report_age
		puts "#{@name} is #{@age} years old"
	end
end
dog=Dog.new
dog.name="Daisy"
dog.age=3
dog.report_age
dog.move ("bed")
