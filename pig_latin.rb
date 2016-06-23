=begin
def pig_latin(words)
	orgininal_length = 0
	new_length = 0

	words.each do |word|
		orgininal_length += word.length
		letters = word.chars
		first_letter = letters.shift
		new_word = "#{letters.join}#{first_letter}ay"
		puts "Pig latin words:#{new_word}"
		new_length += new_word.length 
	end

	puts "total originial length #{orgininal_length}"
	puts "total pig latin length #{new_length}"
end

my_words = ["blocks", "totally", "rock"]
pig_latin(my_words)
=end


today = Date.today
puts "#{today.year}=#{today.month}-#{today.day}"