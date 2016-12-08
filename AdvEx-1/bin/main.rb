require_relative "../lib/evaluator"
#(1) Metthod to Evaluate simple arithmetic

evaluator = Evaluator.new
puts evaluator.evaluate 3,:*,2

#(2) Blocks and Yield

evaluator.do_block_stuff do
  puts 'Simple Block...'
end

evaluator.do_parameterized_block do |number|
  puts "The square of #{number} is #{number ** 2}"
end