lines = []

File.open ("reviews.txt") do |review_file|
	lines = review_file.readlines
end
	relevant_lines = []

	lines.each do |line|

		if line.include? ("truncated")
			relevant_lines << line
		end
		end

puts relevant_lines
