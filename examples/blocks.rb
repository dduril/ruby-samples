# Blocks

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each {|num| puts num * 10 }
puts

# find - find/detect, find_all/select, any?, all?, delete_if
(1..10).find{|i| puts i}
puts

(1..10).find_all{|i| puts i if i % 3 == 0}
puts

hash1 = {"a" => 100, "b" => 200}
hash2 = {"b" => 300, "c" => 400}
puts hash1.merge(hash2)
puts

array = [1, 2, 3]
puts array
puts array.collect {|i| i ** 3}
puts

array = [2, 7, 1, 9, 5]
puts array.sort{|v1, v2| v1 <=> v2}
puts

fruits = ["apple", "orange", "pineapple", "banana", "cherries"]
puts fruits.sort {|fruit1, fruit2| fruit1.length <=> fruit2.length}
puts

hash = {"c" => 222, "a" => 555, "d" => 111, "b" => 333}
puts "Print hash"
puts hash
puts
puts "To array"
puts hash.to_a
puts
puts "Hash sort on keys"
puts hash.sort {|item1, item2| item1[0] <=> item2[0]}
puts
puts "Hash sort on values"
puts hash.sort {|item1, item2| item1[1] <=> item2[1]}
puts

array = [*1..10]
puts array.inspect
sum = array.inject {|memo, n| memo + n}
puts sum
puts

product = array.inject {|memo, n| memo * n}
puts product
puts

fruits = ['apple', 'pear', 'banana', 'strawberry', 'pineapple']
longest_word = fruits.inject do |memo, fruit|
  if memo.length > fruit.length
    memo
  else
    fruit
  end
end
puts longest_word
puts

menu = ['Home', 'History', 'Products', 'Services', 'Contact Us']
menu_length = menu.inject(10) {|memo, item| memo + item.length}
puts menu_length
