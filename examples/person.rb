load 'contact_info.rb'

class Person
  include ContactInfo
end

p = Person.new
p.first_name = "John"
p.last_name = "Smith"
p.city = "San Jose"
p.state = "CA"
p.zip_code = "95124"

#puts p.first_name + " " + p.last_name
puts p.full_name
puts p.city_state_zip