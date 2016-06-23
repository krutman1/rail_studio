module AcceptsComments
	def comments
		@comments ||= []
	end

	def add_comment(comment)
		comments << comment
	end
end


class Clip
	def play
		puts "Playing #{object_id}..."
	end
end

class Video < Clip
	include AcceptsComments
	attr_reader :resolution
end

class Song < Clip
	include AcceptsComments
	attr_reader :beats_per_minute
end

class Photo
	include AcceptsComments
	def show 
		puts "Displaying #{object_id}..."
	end
end




video = Video.new
video.add_comment("Cool!")
video.add_comment("Wierd")
song=Song.new
song.add_comment("Awesome beat")

photo=Photo.new
photo.add_comment ("Beautiful colors")

p photo.comments
photo.show