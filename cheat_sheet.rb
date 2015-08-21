@main_menu = {
  '0' => 'Quit',
  '1' => 'Command Line',
  '2' => 'Vim',
  '3' => 'Sublime'
}

@command_line_menu = {
  '1' => ['copy', 'cp', 'cp <source filename> <destination filename>'],
  '2' => ['move', 'mv', 'mv source filename> <destination directory>'],
  '3' => ['remove', 'rm', 'rm <filename'],
  '4' => ['list', 'ls', 'ls <directory>'],
  '5' => ['make directory', 'mkdir', 'mkdir <directory name>'],
}

@vim_menu = {
  '1' => ['move cursor left', 'h'],
  '2' => ['move cursor right', 'l'],
  '3' => ['move cursor up', 'k'],
  '4' => ['move cursor down', 'j'],
  '5' => ['insert mode', 'i'],
  '6' => ['escape insert mode', 'esc'],
  '7' => ['write and quit', ':wq'],
  '8' => ['quit vim without writing', ':q']
}

@sublime_menu = {
  '1' => ['duplicate a line', 'Cmd-Shft-D'],
  '2' => ['indent a line left or right', 'Cmd-] or Cmd-['],
  '3' => ['move an entire line up or down', 'Cmd-Ctrl-Up or Cmd-Ctrl-Down'],
  '4' => ['move cursor to the end of the line', 'Cmd-ArrowLeft or Cmd-ArrowRight'],
  '5' => ['comment out the line', 'Cmd-Slash(/)'],
  '6' => ['enter a new line after the current line', 'Cmd-Enter']
}

def main_menu
  puts 'Main Menu'
  @main_menu.length.times do |choice|
    puts "#{choice.to_s}. #{@main_menu[choice.to_s]}"
  end
  puts 'Choose an option:'
end

def command_menu
  puts '0. Main Menu'
  @command_line_menu.length.times do |choice|
    puts "#{(choice + 1).to_s}. #{@command_line_menu[(choice + 1).to_s][0]} - #{@command_line_menu[(choice + 1).to_s][1]} - #{@command_line_menu[(choice +1).to_s][2]}"
  end
  puts '6. Search'
end

def vim_menu
  @vim_menu.length.times do |choice|
    puts "#{@vim_menu[(choice + 1).to_s][0]} - #{@vim_menu[(choice + 1).to_s][1]}"
  end
  puts 'Press 0 to go back to the Main Menu.'
end

def sublime_menu
  @sublime_menu.length.times do |choice|
    puts "#{@sublime_menu[(choice + 1).to_s][0]} - #{@sublime_menu[(choice + 1).to_s][1]}"
  end
  puts 'Press 0 to go back to the Main Menu.'
end

# Use while loop to stay in the program. Have a prompt to exit.
puts 'Welcome to the Cheat Sheet.'
puts '***************************'
main_menu()

main_menu_choice = gets.strip

while main_menu_choice != '0'
  if main_menu_choice == '1'
    command_menu
    command_menu_choice = gets.strip
    if command_menu_choice == '0'
      main_menu
      main_menu_choice = gets.strip
    elsif ['1', '2', '3', '4', '5'].include?(command_menu_choice)   
      puts `man #{@command_line_menu[command_menu_choice][0]}`
    elsif command_menu_choice == '6'
      puts 'What would you like to search?:'
      search_term = gets.strip
      puts `man #{search_term}`
    else
      puts 'Not a valid option'
    end
  elsif main_menu_choice == '2'
    vim_menu
    vim_menu_choice = gets.strip
    if vim_menu_choice == '0'
      main_menu
      main_menu_choice = gets.strip
    else
      puts 'Not a valid option.'
    end
  elsif main_menu_choice == '3'
    sublime_menu
    sublime_menu_choice = gets.strip
    if sublime_menu_choice == '0'
      main_menu
      main_menu_choice = gets.strip
    else
      puts 'Not a valid option.'
    end
  else
    puts 'Not a valid option. Try again.'
    main_menu_choice = gets.strip
  end
end

puts 'Goodbye!'