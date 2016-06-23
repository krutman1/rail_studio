puts"Welocome to the Game"
print"What's your name? "
input=gets.chomp
puts"Welcome, #{input}!"

puts"I know a number one thru hunnna"
puts"try and guess it"
target=rand(100)+1
num_guesses=0
guessed_it=false

until num_guesses==10 || guessed_it
puts "You've got #{10 - num_guesses} guesses left"

print "Make a guess now "
guess=gets.to_i
num_guesses +=1


if guess<target
		puts "Opps, too low"
elsif guess>target 
		puts "Opps, too high like the sky"
elsif guess==target
		puts "Good job #{input}"
		puts "You guess it in #{num_guesses} guesses"
		guessed_it=true
end
end
unless guessed_it
 	puts "Sorry you didn't win, the number was #{target}"
 end