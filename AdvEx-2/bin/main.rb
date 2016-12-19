puts 'Interactively ...'

@binding = binding
to_eval = gets
while !(to_eval =~ /q/i)
  puts eval(to_eval, @binding)
  to_eval = gets
end

puts 'Quitting ... '