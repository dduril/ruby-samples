# Ruby Examples
# Developed in Aptana Studio 3
# ----------------------------
# Object Types

# strings
puts "Strings"
puts "-------"
h =  "Hello World!"
puts "h           : " + h
puts "reverse     : " + h.reverse
puts "capitalize  : " + h.capitalize
puts "downcase    : " + h.downcase
puts "upcase      : " + h.upcase
puts h.length.to_s
puts h.class.to_s
puts h.object_id.to_s
puts ""


# integers
puts "Integers"
puts "--------"
x = 5
y = 3
puts x.class
puts x + y
puts x - y
puts x * y
puts x / y
puts x % y
puts x ** y
x = 50000000000
puts x.class
puts ""

# floats
puts "Floats"
puts "------"
z = 1234.5678
puts z
puts z.round
puts z.to_i
puts z.floor
puts z.ceil
puts z.class
puts z.object_id
puts ""


# arrays
puts "Arrays"
puts "------"
data_set = ["a", "b", "c", 1, 2, ["dog", "cat"], "rabbit"]
data_set << "d"
data_set.push("e")
data_set.push("f")
data_set.pop
puts data_set.inspect
puts data_set.to_s
puts data_set.join(", ")
puts data_set
puts data_set.length
puts data_set.class
puts data_set.object_id
puts ""
# clear array
# data_set []


# hashes
puts "Hashes"
puts "------"
person = {'first_name' => 'John', 'last_name' => 'Smith', 'title' => 'Software Engineer'}
puts person
puts 'key  : ' + person.key('John')
puts 'value: ' + person['first_name']
puts 'keys  : ' + person.keys.to_s
puts 'values: ' + person.values.to_s
puts person.class
puts person.object_id
puts ""
# clear hash
# person.rb = {}


# symbols
puts "Symbols"
puts "-------"
test = "string"
puts "test".object_id
puts "test".object_id
puts :test.object_id
puts :test.object_id
puts ""

employee = {:first_name => 'John', "last_name" => 'Smith', :title => 'Software Engineer'}
puts employee
puts ""


# booleans
puts "Booleans"
puts "--------"
flag = true
if flag == true
  puts "True"
else
  puts "False"
end
puts ""


# ranges
puts "Ranges"
puts "------"
x = 1..10
y = 1...10
alpha = 'a'..'m'
puts [*x].inspect
puts [*y].inspect
puts [*alpha].inspect
puts ""


# constants
puts "Constants"
puts "---------"
PI = 3.14159
puts PI
puts PI.class