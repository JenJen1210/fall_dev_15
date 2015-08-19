# Main menu prompt
# Create as a method
def main_menu()
	puts 'Main Menu'
	puts '	0. Quit'
	puts '	1. Command Line'
	puts '	2. Vim'
	puts 'Choose an option:'
end

# Sub menu 
# Create as a method
def sub_menu()
	puts 'Command Line Cheat Sheet'
  puts '  0. Main Menu'
  puts '  1. copy - cp - cp <source filename> <destination filename>'
  puts '  2. move - mv - mv <source filename> <destination directory>'
  puts '  3. remove - rm - rm <filename>'
  puts '  4. list - ls - ls <directory>'
  puts '  5. make directory - mkdir - mkdir <directory name>'
  puts '  6. Search'
  puts 'Choose an option'
end

# Use while loop to stay in the program. Have a prompt to exit.
puts 'Welcome to the Cheat Sheet.'
puts '***************************'
main_menu()

main_menu_choice = gets.strip

while main_menu_choice != '0'
  if main_menu_choice == '1'
    sub_menu()
    sub_menu_choice = gets.strip
    case sub_menu_choice
      when '0'
        main_menu()
        main_menu_choice = gets.strip
      when '1'
        puts `man cp`
      when '2'
        puts `man mv`
      when '3'
        puts `man rm`
      when '4'
        puts `man ls`
      when '5'
        puts `man mkdir`
      when '6'
        puts 'What would you like to search?:'
        search_term = gets.strip
        puts `man #{search_term}`
    end
  elsif main_menu_choice == '2'
    puts 'There is no Vim Cheat Sheet yet.'
    main_menu()
    main_menu_choice = gets.strip
  else
    puts 'Not a valid option. Try again.'
    main_menu_choice = gets.strip
  end
end

puts 'Goodbye!'