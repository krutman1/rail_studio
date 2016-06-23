=begin
module Friendly
	def my_method
		puts "hello from Friendly"
	end
end

class ClassOne
	include Friendly
end

class ClassTwo
	include Friendly
end

ClassOne.new.my_method
ClassTwo.new.my_method
=end

module Friendly
	def my_method
		puts "hello from Friendly"
	end
end

class ClassOne
	include Friendly
end

class ClassTwo
	include Friendly
end

ClassOne.new.my_method
ClassTwo.new.my_method

