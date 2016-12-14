#def something.method_name
money =  "money"

def money.convert_me
  puts "The money has been converted."
end

money.convert_me

#Wont work
#rope = "rope"
#rope.convert_me

#class << self

class << money
  def convert_me_again
    puts "I have been converted again!"
  end
end

money.convert_me_again

#Other Singletons
#1
money.instance_eval do
  def print; puts "Money is printing..."; end
end

money.print

#2
money.define_singleton_method(:count) do
  puts "I have plenty money"
end
money.count