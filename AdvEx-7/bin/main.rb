require_relative '../lib/class_creator'

print "Please provide file name without the '.csv' extensions ? : "
filename = gets()
classname = filename.chomp("s\n")
filename.chop!

class_creator = ClassCreator.new
instances = class_creator.create_class(classname,filename)

p instances

