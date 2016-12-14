require_relative('../lib/shopper')

# shopping_list = {
#   "Toothpaste" => 2,
#   "Computer" => 1
# }

# shopper = Shopper.new do |s|
#   shopping_list.each { |k,v| s.add k,v  } 
# end

shopper = Shopper.new
shopper.list do
  add('Toothpaste', 2)
  add('Computer', 1)
end


puts shopper.to_s