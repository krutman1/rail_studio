def my_method(&my_block)
	puts "We're in the method, about to invoke your block"
	my_block.call
	puts "Back in the method"
end
 
my_method do 
	puts "In da block"
end
