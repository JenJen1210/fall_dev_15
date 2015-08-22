class Calculator
  attr_accessor :user_choice, :first_number, :second_number, :answer

  def initialize
    @user_choice = 'empty'
    @first_number = 'empty'
    @second_number = 'empty'
    @answer = 'empty'
  end #init

  def menu_options
    puts '1. add'
    puts '2. subtract'
    puts '3. multiply'
    puts '4. divide'
    puts '5. squaring'
    puts '6. square root'
    puts '7. raise to the power of'
    puts '0. Exit'
    @user_choice = gets.chomp
  end #options

  def main_menu
    puts 'Welcome to calculator! What would you like to do? Select one.'
    puts menu_options
    while @user_choice != '0' 
      if ['1', '2', '3', '4', '7'].include?(@user_choice)
        puts 'Enter first number: '
        @first_number = gets.chomp.to_i
        puts 'Enter second number: '
        @second_number = gets.chomp.to_i
        if @user_choice == '1'
          add(@first_number, @second_number)
        elsif @user_choice == '2'
          subtract(@first_number, @second_number)
        elsif @user_choice == '3'
          multiply(@first_number, @second_number)
        elsif @user_choice == '4'
          divide(@first_number, @second_number)
        elsif @user_choice == '7'
          power_of(@first_number, @second_number)
        end #inner if loop
      elsif @user_choice == '5'
        puts 'Enter number to be squared: '
        @first_number = gets.chomp.to_i
        squared(@first_number)
      elsif @user_choice == '6'
        puts 'Enter number: '
        @first_number = gets.chomp.to_i
        square_root(@first_number)
      else
        puts 'Enter valid option'
        menu_options
      end #outer if loop
      puts "The answer is #{@answer}"    
      puts "What would you like to do now?"
      puts menu_options
    end #until
  end # main menu

  def add(num1, num2)
    @answer = num1 + num2
  end

  def subtract(num1, num2)
    @answer = num1 - num2
  end

  def multiply(num1, num2)
    @answer = num1 * num2
  end

  def divide(num1, num2)
    if num2 != 0
      @answer = num1 / num2
    else
      puts 'Cannot divide by zero.'
    end
  end

  def power_of(num1, num2)
    @answer= num1 ** num2
  end

  def squared(num1)
    @answer = num1 ** 2
  end

  def square_root(num1)
    @answer = num1 ** 0.5
  end
end

calculator = Calculator.new
calculator.main_menu
puts 'Goodbye!'

# For some reason, entering an invalid option stores the answer from the last calculation  
# Allow the result value to be used in the following calculation