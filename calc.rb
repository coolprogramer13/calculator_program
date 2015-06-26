while 0 == 0 do
def get_int_values
  [gets , gets].map{ |s| s.chomp.to_f }
end

  puts "Would you like to [add], [multiply], [divide], [subtract] or [exit]?"
response = gets.chomp

case response.downcase
when 'add'
  puts "Which numbers would you like to add?"
  operator = :+

when 'subtract'
  puts "Which numbers would you like to subtract?"
  operator = :-

when 'multiply'
  puts "Which numbers would you like to multiply?"
  operator = :*
  
when 'divide'
  puts "Which numbers would you like to divide?"
  operator = :/
  
when 'exit'
  abort("exiting...")
  
when 'divine'
  abort("you are truly divine, my good sir")
end

answer = get_int_values.inject(operator)
puts "The answer is... #{answer}"
end