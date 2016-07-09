# Ruby Examples
# Developed in Aptana Studio 3
# ----------------------------
# Methods

# hello
def hello
  puts "Hello World!\n\n"
end

# greeting
def greeting(name = "Joe")
  puts "Hello #{name}!\n\n"
end

# add
def add(x=nil, y=nil)
  return x + y
end

# longest_word
def longest_word(words=[])
  longest_word = words.inject do |memo, word|
    memo.length > word.length ? memo : word
  end
  puts "Longest word: " + longest_word
end

# longest_word2
def longest_word2
  longest_word = @veggies.inject do |memo, word|
    memo.length > word.length ? memo : word
  end
  puts "Longest word: " + longest_word
end

# method output
hello

greeting()

greeting("Jenny")

puts "Output: #{add(50, 100)}"
puts

fruits = ['apple', 'cherry', 'pineapple', 'strawberry', 'orange']
longest_word(fruits)
puts

# instance variable will have scope inside the method
@veggies = ['beans', 'spinach', 'green beans', 'carrot', 'onion']
longest_word2
puts
