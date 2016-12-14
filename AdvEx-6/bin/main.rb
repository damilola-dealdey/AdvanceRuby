require_relative "../lib/string"

print "Enter desired string : "
str = Mystring.new(gets)
#puts str

print "Enter the desired method's name' : "
method_name = gets.chomp

# puts substr
# puts str.include? substr

puts eval("str.#{method_name}")



#puts str.send(:excludes?, substr)
#puts str.send(:include?, substr)

# out =  "the string contains the sub."
# out =  "The string doesnt contain the sub" if str.excludes? substr
# puts out