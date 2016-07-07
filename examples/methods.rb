# Methods
# Methods with arguments typically use parentheses.
# Methods without arguments typically do not.
# Parentheses are optional in both cases.

def hello
  puts "Hello World!\n\n"
end

def greeting(name = "Joe")
  puts "Hello #{name}!\n\n"
end

def add(x=nil, y=nil)
  return x + y
end

def longest_word(words=[])
  longest_word = words.inject do |memo, word|
    memo.length > word.length ? memo : word
  end
  puts "Longest word: " + longest_word
end

def longest_word2
  longest_word = @veggies.inject do |memo, word|
    memo.length > word.length ? memo : word
  end
  puts "Longest word: " + longest_word
end

# test methods.rb
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
