# Ruby Examples
# Developed in Aptana Studio 3
# ----------------------------
# Conditionals

# if, else, elsif
x = 90

if x > 0 && x <= 5
  puts "x is between 0 and 5"
elsif x > 5 && x <= 10
  puts "x is between 5 and 10"
else
  puts "x is less than 1 or greater than 10"
end
puts ""

name = "John"
puts "This is John" if name == "John"
puts ""

# unless
flag = true
unless flag
  puts "true"
end
puts ""

# case
fruit = "apples"
case
  when fruit == "apples"
    puts "Apples"
  when fruit == "bananas"
    puts "Bananas"
  when fruit == "strawberries"
    puts "Strawberries"
  else
    puts "Kiwis"
end
puts ""

# case - shorter syntax
fruit = "apples"
case fruit
  when "apples"
    puts "Apples"
  when "bananas"
    puts "Bananas"
  when "strawberries"
    puts "Strawberries"
  else
    puts "Kiwis"
end
puts ""

# ternary - boolean ? code1 : code2
puts x == 1 ? "one" : "not one"
puts ""

# for loop
for i in 0...10 # don't include 10
  puts i 
end
puts ""

for i in 0..10 # include 10
  puts i 
end
puts ""

# loop do
x = 0
loop do
  x += 1
  next if x % 3 == 0 # skip numbers evenly divided by three
  puts x
  break if x >= 20
end
puts ""

# while
y = 0
while y <= 10
  puts y
  y += 1
end
puts ""

# until
a = 1

until a >= 5 
  puts a                       
  a += 1                       
end 
puts ""

x = 0
puts x += 2 while x < 100
puts ""

y = 5000
puts y /= 2 until y <= 1
puts ""

# iterators
5.times do
  puts "Hello"
end
puts ""

1.upto(5){ puts "Hello World!" }
puts ""

5.downto(1){ puts "Hello" }
puts ""

(1..5).each{ puts "Hello World!" }
puts ""

1.upto(5) do |i|
  puts i.to_s + ". Hello"
end
puts ""

fruits = ['apple', 'banana', 'strawberry', 'pear', 'orange']
fruits.each do |f|
  puts f.capitalize
end
puts ""

for fruit in fruits
  puts fruit.capitalize
end
puts ""
