require 'pry'

class List
  attr_accessor :name, :item_array

  def initialize(name)
    @name = name
    @item_array = []
  end

  def display_menu
    puts """
    What would you like to do?
      1. Display List
      2. Add item 
      3. Remove item 
      4. Mark an item complete
      5. exit
      """
      choice = gets.chomp
      while choice != '5'
        if choice =='1'
          display_list
        elsif choice == '2'
          puts 'Name of list item: '
          item_name = gets.chomp
          puts 'Add a description: '
          description = gets.chomp
          add_item(item_name, description)
        end     
      end
  end

  def add_item(name, description)
    @item_array << Item.new(name, description)
  end

  def display_list
    @item_array.each do |item|
      puts item.item_name + ' -- ' + item.description
    end
  end
end

class Item
  attr_accessor :item_name, :description

  def initialize(item_name, description)
    @item_name = item_name
    @description = description
  end
end
binding.pry