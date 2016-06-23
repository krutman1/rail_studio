 class Employee

 	attr_reader :name

 	def name= (name)
 		@name = name
 	end

 	def initialize
 		self.name = name
 	end
 end

 class Information < Employee
 	attr_reader :job_title

 	def job_title = (job_title)
 		@job_title = job_title
 	end
 	def initalize 
 		self.job_title = job_title
 	end

 	puts "#{name} is our #{job_title}"

 end

 e=Information.new
 e.name = "Mary"
 e.job_title = "Boss"
