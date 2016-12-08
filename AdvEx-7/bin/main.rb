require_relative '../lib/class_creator'

print "Please provide file name without the '.csv' extensions ? : "
filename = gets()
classname = filename.chomp("s\n")
filename.chop!

classCreator = ClassCreator.new
instances = classCreator.create_class(classname,filename)

p instances

