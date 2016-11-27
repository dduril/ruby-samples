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

---

###Using the Interactive Ruby (irb) Console

Working from the [Ruby on Rails Tutorial](https://www.railstutorial.org/ "Ruby on Rails Tutorial Third Edition") by Michael Hartl.

**Simple Math**

		>> 17 + 42 # integer addition
		=> 59

**Strings**

		>> "foo" + "bar"
		=> "foobar"

		>> first_name = "John"
		=> "John"
		
		>> "#{first_name} Smith"
		=> "John Smith"
		
		>> last_name = "Smith"
		=> "Smith"
		
		>> first_name + " " + last_name
		=> "John Smith"
		
		>> "#{first_name} #{last_name}"
		=> "John Smith"
		
		>> puts "foo"
		foo
		=> nil
		
		>> print "foo"
		foo=> nil
		
		>> print "foo\n"
		foo
		=> nil

**Objects and Message Passing**

		>> "foobar".length
		=> 6
		
		>> "foobar".empty?
		=> false
		
		>> "".empty?
		=> true
		
		>> s = "foobar"
		=> "foobar"
		
		>> if s.empty?
		>>   "The string is empty"
		>> else
		>>*   "The string is not empty"
		>> end
		=> "The string is not empty"
		
		>> "foo".nil?
		=> false
		
		>> "".nil?
		=> false
		
		>> nil.nil?
		=> true
		
		>> x = "foo"
		=> "foo"
		
		>> puts "x is not empty" if !x.empty?
		x is not empty
		=> nil
	

**Method Definitions**

		>> def string_message(str = '')
		>>   if str.empty?
		>>     "It's an empty string!"
		>>   else
		>>*     "The string is nonempty."
		>>   end
		>> end
		=> :string_message
		
		>> puts string_message("foobar")
		The string is nonempty.
		=> nil
		
		>> puts string_message("")
		It's an empty string!
		=> nil
		
		>> puts string_message
		It's an empty string!
		=> nil	


**Arrays and Ranges**

		>> "foo bar        baz".split
		=> ["foo", "bar", "baz"]
		
		>> a = [42, 17, 8, 15, 23]
		=> [42, 17, 8, 15, 23]
		
		>> a[0]
		=> 42
		
		>> a[1]
		=> 17
		
		>> a[4]
		=> 23
		
		>> a[-1]
		=> 23
		
		>> a.first
		=> 42
		
		>> a.last
		=> 23
		
		>> a.last == a[-1]
		=> true
		
		>> x = a.length
		=> 5
		
		>> a
		=> [42, 17, 8, 15, 23]
		
		>> a.empty?
		=> false
		
		>> a.include?(42)
		=> true
		
		>> a.sort
		=> [8, 15, 17, 23, 42]
		
		>> a.reverse
		=> [23, 15, 8, 17, 42]
		
		>> a.shuffle
		=> [23, 8, 15, 42, 17]
		
		>> a.sort!
		=> [8, 15, 17, 23, 42]
		
		>> a
		=> [8, 15, 17, 23, 42]
		
		>> a.push(10)
		=> [8, 15, 17, 23, 42, 10]
		
		>> a << 32
		=> [8, 15, 17, 23, 42, 10, 32]
		
		>> a << "foo" << "bar" << "baz"
		=> [8, 15, 17, 23, 42, 10, 32, "foo", "bar", "baz"]
		
		>> a.join(', ')
		=> "8, 15, 17, 23, 42, 10, 32, foo, bar, baz"

**Blocks**

		>> 0..9
		=> 0..9
		
		>> (0..9).to_a
		=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
		
		>> a = %w[foo bar baz quux]
		=> ["foo", "bar", "baz", "quux"]
		
		>> a[0..2]
		=> ["foo", "bar", "baz"]
		
		>> a = (0..9).to_a
		=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
		
		>> ('a'..'m').to_a
		=> ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]
		
		>> (1..5).each { |i| puts i**2 }
		1
		4
		9
		16
		25
		=> 1..5
		
		>> (1..5).each do |i|
		>* puts 2 * i
		>> end
		2
		4
		6
		8
		10
		
		=> 1..5
		>> (1..5).each do |number|
		>*   puts 2 * number
		>>   puts '---'
		>> end
		2
		---
		4
		---
		6
		---
		8
		---
		10
		---
		=> 1..5
		
		>> 3.times { puts "Hello, World!" }
		Hello, World!
		Hello, World!
		Hello, World!
		=> 3
		
		>> (1..5).map { |i| i**3 }
		=> [1, 8, 27, 64, 125]
		
		>> %w[a b c d e]
		=> ["a", "b", "c", "d", "e"]
		
		>> %w[a b c d e].map { |char| char.upcase }
		=> ["A", "B", "C", "D", "E"]
		
		>> %w[A B C D E].map { |char| char.downcase }
		=> ["a", "b", "c", "d", "e"]
		
		>> ('a'..'z').to_a.shuffle[0..7].join
		=> "ajxkifoy"
		
		>> ('a'..'z').to_a
		=> ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
		
		>> ('a'..'z').to_a.shuffle
		=> ["w", "a", "p", "x", "i", "h", "e", "k", "j", "y", "u", "r", "q", "z", "m", "b", "s", "t", "c", "d", "l", "g", "o", "f", "v", "n"]
		
		>> ('a'..'z').to_a.shuffle[0..7]
		=> ["n", "e", "o", "s", "p", "b", "c", "j"]
		
		>> ('a'..'z').to_a.shuffle[0..7].join
		=> "qxzplhbn"
		>>

**Hashes and Symbols**

		>> user = {}
		=> {}
		
		>> user = { "first_name" => "John", "last_name" => "Smith" }
		=> {"first_name"=>"John", "last_name"=>"Smith"}
		
		>> "foobar"
		=> "foobar"
		
		>> "foobar".reverse
		=> "raboof"
		
		>> h1 = { :name => "John Smith", :email => "jsmith@acme.com" }
		=> {:name=>"John Smith", :email=>"jsmith@acme.com"}
		
		>> h2 = { name: "John Smith", email: "jsmith@acme.com" }
		=> {:name=>"John Smith", :email=>"jsmith@acme.com"}
		
		>> flash = {success: "It worked!", danger: "It failed." }
		=> {:success=>"It worked!", :danger=>"It failed."}
		
		>> flash.each do |key, value|
		>*   puts "Key #{key.inspect} has value #{value.inspect}"
		>> end
		Key :success has value "It worked!"
		Key :danger has value "It failed."
		
		=> {:success=>"It worked!", :danger=>"It failed."}
		>> puts (1..5).to_a
		1
		2
		3
		4
		5
		=> nil
		>> puts (1..5).to_a.inspect
		[1, 2, 3, 4, 5]
		=> nil
		
		>> puts :name, :name.inspect
		name
		:name
		=> nil

**Classes**

		>> s = "foobar"
		=> "foobar"
		
		>> s.class
		=> String
		
		>> s = String.new("foobar")
		=> "foobar"
		
		>> s.class
		=> String
		
		>> s = "foobar"
		=> "foobar"
		
		>> a = Array.new([1, 5, 12])
		=> [1, 5, 12]
		
		>> a.class
		=> Array
		
		>> h = Hash.new
		=> {}
		
		>> h.class
		=> Hash
		
		>> s2 = String.new("foobar")
		=> "foobar"
		
		>> s2.class
		=> String
		
		>> s2.class.superclass
		=> Object
		
		>> s2.class.superclass.superclass
		=> BasicObject
		
		>> s2.class.superclass.superclass.superclass
		=> nil
		
		>> class Word < String
		>>   # Returns true if the string is its own reversed
		>*   def palindrome?
		>>     self == self.reverse
		>>   end
		>> end
		=> :palindrome?
		
		>> s = Word.new("level")
		=> "level"
		
		>> s.palindrome?
		=> true
		
		>> s.length
		=> 5
		
		>> s.class
		=> Word
		
		>> s.class.superclass
		=> String