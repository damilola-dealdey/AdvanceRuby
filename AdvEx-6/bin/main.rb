require_relative "../lib/string"

print "String  to search through : "
str = Mystring.new(gets)
#puts str

print "Sub-string to search for : "
substr = gets

# puts substr
# puts str.include? substr

puts str.send(:excludes?, substr)
#puts str.send(:include?, substr)

# out =  "the string contains the sub."
# out =  "The string doesnt contain the sub" if str.excludes? substr
# puts out