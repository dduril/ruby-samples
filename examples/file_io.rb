# Ruby Examples
# Developed in Aptana Studio 3
# ----------------------------
# File IO

# use forward slashes, even on Windows
puts "/Development/Ruby/Ruby-101/"
puts

# File.join ensures platform independence
puts File.join('', 'Development', 'Ruby', 'Ruby-101')
puts

# __FILE__ is THIS file
puts __FILE__
puts

# expand_path will convert a relative path to an absolute path
file_handle = File.expand_path(__FILE__)
puts file_handle
puts

# relative paths are easiest when you start with the
# file's directory
dir_name = File.dirname(__FILE__)
puts dir_name
puts

# Instantiate a file object and give it instructions
file = File.new('test.txt', 'w')
file.puts "Ruby Programming"
file.puts "There are a lot of great resources for this popular programming language."
file.puts ""
file.puts "Programming Ruby (the 'pick-axe' book), The Well-Grounded Rubyist, and Eloquent Ruby"
file.puts "are great places to start your Ruby journey."

puts "Testing common file methods"
puts File.exist?(file)
puts File.file?(file)
puts File.directory?(file)
puts File.readable?(file)
puts File.writable?(file)
puts File.executable?(file)
puts File.size(file)
puts File.dirname(file)
puts File.expand_path(file)
full_path = File.expand_path(file)
puts File.basename(full_path)
puts File.extname(file)

puts File.atime(file)   # last accessed time, read or write
puts File.mtime(file)   # last modified time, write
puts File.ctime(file)   # last status change time, NOT created time


file.close

puts

# Provide a file with a block of instructions
puts "Output of test.txt"
File.open('test.txt', 'r') do |file|
  while line = file.gets
    puts line.chomp
  end
end
puts

# or if you just want to read every line...
puts "Output of test.txt"
File.open('test.txt', 'r') do |file|
  file.each_line {|line| puts line}
end
puts
# second argument is the 'mode': r, w, a, r+, w+, a+

puts "Directory"
puts Dir.pwd
puts

puts "Directory listing"
Dir.foreach('.') { |entry| puts entry }



