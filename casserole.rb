def make_casserole
	puts "Preheat oven to 350 degrees"
	ingredients = yield
	

	puts "Place #{ingredients} in dish"
	puts "Bake for 20 minutes"
end

make_casserole do 
	"noodles and tasty shit"
	
end

make_casserole do 
	"rice and broccoli"
	
end

