class CelestialBody
	attr_accessor :type, :name
	
end

bodies = Hash.new do |hash, key|

		body= CelestialBody.new
		body.type = "Planet"
		hash[key] = body
		body
	end

	bodies ["Mars"].name = "Mars"
	bodies ["Europa"].name = "Europa"
	bodies ["Europa"].type = "moon"

	p bodies