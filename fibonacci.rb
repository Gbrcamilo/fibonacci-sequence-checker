def fibonacci_sequence(limit)
  sequence = [0, 1]
  
  while sequence[-1] < limit
    sequence << sequence[-2] + sequence[-1]
  end
  
  sequence
end

def is_in_fibonacci?(number)
  sequence = fibonacci_sequence(number)
  
  if sequence.include?(number)
    puts "#{number} pertence à sequência de Fibonacci."
  else
    puts "#{number} não pertence à sequência de Fibonacci."
  end
end

print "Informe um número: "
number = gets.chomp.to_i

is_in_fibonacci?(number)
