# Basic Ruby Syntax and Examples

---

<strong>Variables</strong>

		# Declare variables
		x = 100
		y = 202.5
		s = "Apples and oranges"

		# Output variables and their class types
		puts "x:       #{x}"
		puts "y:       #{y}"
		puts "s:       #{s}"

<strong>Control Flow</strong>

<strong>if - elsif - else</strong>

		x = 3 # declare a variable

		if x > 0
			puts "x is positive."
		elsif x < 0
		  	puts "x is negative."
		else
		  	puts "x is zero."
		end

		# => x is positive.

		# using string interpolation
		if x > 0
		  	puts "#{x} is positive."
		elsif x < 0
		  	puts "#{x} is negative."
		else
		  	puts "#{x} is zero."
		end

		# => 3 is positive.

<strong>case</strong>

		selection = "apple"
		case selection
  		  	when "apple"
    			puts "Apple"
  		  	when "banana"
    	    	puts "Banana"
  		  	when "strawberry"
    			puts "Strawberry"
  		  	else
    			puts "Cherry"
		end

		# => Apple

<strong>loop</strong>

		x = 0
		loop do
			puts x
			x += 1
		end

<strong>iterators</strong>

		# Output string 4 times
		4.times { puts "Hello World!" }

		# Output Hello 5 times
		5.times do
  			puts "Hello"
		end

		# => HelloHelloHelloHelloHello

		1.upto(5) do |i|
  			puts i.to_s + ". Hello"
		end

		# => 1. Hello
		# => 2. Hello
		# => 3. Hello
		# => 4. Hello
		# => 5. Hello
		