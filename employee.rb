=begin
	
rescue Exception => e
	
end
class Employee
	attr_reader :name, :salary

	def name=(name)
		if name == " "
			raise "Name cant be blank"
		end

		@name = name
	end

	def salary=(salary)
		if salary < 0
			raise "A salary of #{salary} isnt valid"
		end 
		@salary = salary
	end

	def initialize (name="Anonymous", salary=0.0)
		self.name = name
		self.salary = salary

	def print_pay_stub
		puts "Name:#{@name}"
		pay_for_period = (@salary/365.0)*14
		formatted_pay = format("$%.2f", pay_for_period)
		puts "Pay for this period: #{formatted_pay}"
	end 
end

end

amy=Employee.new("Amy", 50000)
amy.print_pay_stub
Employee.new.print_pay_stub 
bob=Employee.new(" ", -1000)

=end

class Employee
	attr_reader :name
	#:salary

	def name=(name)
		if name == " "
			raise "Name cant be blank"
		end

		@name = name
	end
	def print_name
		puts "Name: #{name}"
	end
=begin
	def salary=(salary)
		if salary < 0
			raise "A salary of #{salary} isnt valid"
		end 
		@salary = salary
	end

	def initialize (name="Anonymous", salary=0.0)
		self.name = name
		self.salary = salary

	def print_pay_stub
		puts "Name:#{@name}"
		pay_for_period = (@salary/365.0)*14
		formatted_pay = format("$%.2f", pay_for_period)
		puts "Pay for this period: #{formatted_pay}"
	end 
	
=end 
end



class SalariedEmployee < Employee

	attr_reader :salary
	def salary= (salary)
		@salary = salary
	end


	def initialize(name = "Anonymous", salary = 0.0)
		self.name = name
		self.salary = salary

	def print_pay_stub
		print_name
		pay_for_period = (@salary/365.0)*14
		formatted_pay = format("$%.2f", pay_for_period)
		puts "Pay for this period: #{formatted_pay}"
	end

end

sal = SalariedEmployee.new
sal.name = "Jane"
sal.salary = 50000
sal.print_pay_stub



class HourlyEmployee < Employee
	attr_reader :hourly_wage, :hours_per_week

	def hourly_wage=(hourly_wage)
		@hourly_wage=hourly_wage
	end

	def hours_per_week= (hours_per_week)
		@hours_per_week=hours_per_week
	end

	def print_pay_stub
		print_name
		pay_for_period= hourly_wage * hours_per_week * 2
		formatted_pay=format("$%.2f", pay_for_period)
		puts "Pay This Period:#{formatted_pay}"
	end

	def initialize (name = "Anonymous", hourly_wage = 0, hours_per_week =0)
		self.name=name
		self.hourly_wage=hourly_wage
		self.hours_per_week=hours_per_week
	end
end


sals=SalariedEmployee.new("Janey", 50000)
sals.print_pay_stub

hour=HourlyEmployee.new("Smithy", 14.97, 30)
hour.print_pay_stub
end 

