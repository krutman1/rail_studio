class Animal
	attr_reader :name,:age

	def name=(value)
		if value ==" "
			raise "Name can't be blank"
		end
		@name=value
	end

	def age=(value)
		if value <0
			raise "An age of #{value} isn't valid"
		end
		@age=value
	end

	def talk
		puts "#{@name} says bark"
	end

	def move(destination)
		puts "#{@name} runs to the #{destination}"
	end

	def report_age
		puts "#{@name} is #{@age} years old"
	end 
end

class Dog < Animal
end

class Cat< Animal
	def talk
		puts "#{name} says meow"
	end
end

class Bird< Animal
	def talk
		puts "#{@name} says chirp chirp"
		end
end

class Armadillo <Animal
	def move (destination)
	puts "#{name} rolls" 
	super
	end

end

whiskers=Cat.new
whiskers.name="Whisters"
whiskers.talk

gary=Armadillo.new
gary.name="Gary"
gary.move("sidewalks")