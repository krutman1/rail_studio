class ListWithCommas
	attr_accessor :items
	def join
		last_item = "and #{items.last}"
		other_items = items.slice(0, items.length-1).join(', ')
		"#{other_items}, #{last_item}"
	end
end

three_objects = ListWithCommas.new
three_objects.items=['my parents','a rodeo clown', 'a prized bull']
puts "A photo of #{three_objects.join}"