class Candidate 
	attr_accessor :name, :age, :occupation, :hobby, :birthplace
	def initialize(name, age:, occupation:, hobby:, birthplace: "Sleepy Creek")
		self.name = name
		self.age = age
		self.occupation = occupation
		self.hobby = hobby
		self.birthplace = birthplace
	end
end
=begin
	
rescue Exception => e
	
end
def print_summary(candidate)
	puts "Candidate: #{candidate.name}"
	puts "Age: #{candidate.age}"
	puts "Occupation: #{candidate.occupation}"
	puts "Hobby: #{candidate.hobby}"
	puts "Birthplace: #{candidate.birthplace}"
	end
=end
p Candidate.new("Amy", age:39)