# Basic Ruby Syntax and Examples

---

<strong>Control Flow</strong>

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


