# Ruby Examples
# Developed in Aptana Studio 3
# ----------------------------

class Employee

  # attributes
  attr_accessor :first_name, :last_name, :job_title, :company, :pay_group

  # class attribute
  @@company_name = "IT Consulting, Inc."
  @@total_employees = 0

  def self.total_employees
    @@total_employees
  end

  # class method
  def self.all_departments
    ['Accounting', 'Engineering', 'Human Resources', 'Information Technology', 'Office Services']
  end

  # class method
  # @param [Object] first_name
  # @param [Object] last_name
  # @param [Object] job_title
  def self.create_with_attributes(first_name, last_name, job_title)
    employee = self.new(first_name, last_name, job_title)
    employee.first_name = first_name
    employee.last_name = last_name
    employee.job_title = job_title

    return employee
  end

  # initialize method
  def initialize(first_name, last_name, job_title)
    @first_name = first_name
    @last_name = last_name
    @job_title = job_title
    @@total_employees += 1
    puts "***** New Employee Added *****"
  end

  # reader and writer methods
  def first_name
    puts @first_name
  end

  def first_name=(value)
    @first_name = value
  end

  def last_name
    puts @last_name
  end

  def last_name=(value)
    @last_name = value
  end

  def job_title
    puts @job_title
  end

  def job_title=(value)
    @job_title = value
  end

  def company_name
    puts @@company_name
  end

  def company_name(value)
    @@company_name = value
  end

  def display_attributes
    puts "Company : " + @@company_name
    puts "Name    : " + @first_name + ' ' + @last_name
    puts "Title   : " + @job_title
    puts
  end
end


# output
puts Employee.all_departments.inspect
puts ""

emp1 = Employee.new("John", "Smith", "Lead Software Engineer")
emp1.display_attributes

puts "object_id: " + emp1.object_id.to_s
puts "class    : " + emp1.class.to_s
puts

emp2 = Employee.create_with_attributes("Jenny", "Jones", "Human Resources Coordinator")
emp2.display_attributes

puts "object_id: " + emp2.object_id.to_s
puts "class    : " + emp2.class.to_s
puts

puts "Total Employees : " + Employee.total_employees.to_s

