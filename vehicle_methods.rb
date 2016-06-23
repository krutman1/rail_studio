def accelerate
	puts"Stepping on the gas"
	puts"Speeding up!"
end

def sound_horn
	puts"Pressing horn button"
	puts"Beep beep mofo"
end

def use_headlights (brightness="low-beam")
	puts"Turning on #{brightness} headlights"
	puts "Watch out for deer"
end 

def mileage(miles_driven,gas_used)
	return miles_driven / gas_used
end

trip_mileage=(400,12)
puts "You got #{trip_mileage} MPG on this trip."

lifetime_mileage=mileage(11432,366)
puts "This car averages #{lifetime_mileage} MPG."

sound_horn
accelerate
use_headlights