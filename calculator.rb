
  def menu()
    puts '1. add'
    puts '2. subtract'
    puts '3. multiply'
    puts '4. divide'
    puts '5. squaring'
    puts '6. square root'
    puts '7. raise to the power of'
    puts '0. Exit'
  end

  puts 'Welcome to calculator! What would you like to do? Select one.'
  puts menu()
  user_choice = gets.chomp
until user_choice == '0' 
  puts 'Enter first number'

  first_number = gets.to_i
  if user_choice == '1' || user_choice == '2' || user_choice == '3' || user_choice == '4' || user_choice =='7'
    puts 'Enter second number'
    second_number = gets.to_i
    puts "#{first_number} and #{second_number}"

    if user_choice == '1'
      answer = first_number + second_number
    elsif user_choice == '2'
      answer = first_number - second_number
    elsif user_choice == '3'
      answer = first_number * second_number
    elsif user_choice == '4'
      answer = first_number / second_number
    elsif user_choice == '7'
      answer = first_number**second_number
    end
  elsif user_choice == '5'
      answer = first_number**2
  elsif user_choice == '6'
      answer = first_number** 0.5
  end

    puts "The answer is #{answer}"    

    puts "What would you like to do now?"
    puts menu()
    user_choice = gets.chomp
end
puts 'Goodbye!'
    
#   - Allow the result value to be used in the following calculation