class Employee 

attr_accessor :first_name, :last_name, :group, :hire_date, :job_title
	def initialize (options={})
		self.first_name = first_name
		self.last_name = last_name
		self.group = options [:group]
		self.hire_date = options [:hire_date]
		self.job_title = options [:job_title]
	end



	def print_it		
	puts "#{last_name},#{first_name}: Hired on #{hire_date} for the positions of #{job_title} 
	by #{group}"
	end

end
j = Employee.new()
j.last_name = "J"
j.first_name = "K"
j.hire_date = "Yesterday"
j.group = "CC Limited"
j.job_title = "Manager"
j.print_it
