require_relative 'stack'

class Main
  initial_value = gets.chomp.to_i
  stack = Stack.new

  max_values = []
  
  0.upto(initial_value - 1) do |i|
    x = gets.chomp.split(" ")
    
    if x[0] == '1'
      stack.push(x[1].to_i)
    elsif x[0] == '2'
      stack.pop
    else
      max_values << stack.max
    end
  end

  puts 'Maximum Values:'
  puts '==============='
  max_values.empty? ? 'None' : (puts max_values)
end