class Order
  attr_accessor :menu, :entree_choice, :side_1, :side_2, :entree_price, :side1_price, :side2_price, :total_price

  def initialize
    @menu = {
        'entrees'=> {'meat loaf' => ['Congealed protein & fat in a decadent brown special sauce', '23.99'],
                    'lasagna' => ['Frozen pre-packaged Italian delight microwave heated for your convenience.', '18.99'],
                    'fried chicken' => ['KFC special, only two days old.', '19.99'],
                    'liver and onions' => ['Harvested this morning from a sick old cow, our pride and joy!', '26.99'] },
        'sides'=> { 'baked beans' => ['Guaranteed to be a blast.', '3.99'],
                    'corn' => ['A canned specialty, circa 1983. Botulism may or may not be included.', '2.99'],
                    'fries' => ['Over salted, under cooked.', '3.99'],
                    'salad' => ['Ensalada especiale, Spanish... awesome!', '4.99'],
                    'jello' => ['Local delicacy. Green is our favorite.', '2.99'],
                    'coleslaw' => ['Does anyone even like coleslaw?', '0.10']}
    }
    @entree_choice = 'empty'
    @side_1 = 'empty'
    @side_2 = 'empty'
    @entree_price = 0
    @side1_price = 0
    @side2_price = 0
    @total_price = 0
  end

  def display_entree_menu
    puts 'The typical meal comes with an entree and two sides.'
    puts ' '
    @menu['entrees'].length.times do |item|
      puts "#{@menu['entrees'].keys[item]} -- #{@menu['entrees'][@menu['entrees'].keys[item]][0]} -- $#{@menu['entrees'][@menu['entrees'].keys[item]][1]}"
    end
  end

  def display_sides_menu
    puts 'Second, choose two side items:'
    puts ' '
    @menu['sides'].length.times do |item|
      puts "#{@menu['sides'].keys[item]} -- #{@menu['sides'][@menu['sides'].keys[item]][0]} -- $#{@menu['sides'][@menu['sides'].keys[item]][1]}"
    end
  end

  def total_price(entree, side_1, side_2)
    @entree_price = @menu['entrees'][entree][1].to_f
    @side1_price = @menu['sides'][side_1][1].to_f
    @side2_price = @menu['sides'][side_2][1].to_f
    @total_price = @entree_price + @side1_price + @side2_price
    puts """
    Great, you ordered #{entree} with #{side_1} and #{side_2}.

    You owe #{@total_price}.

    Would you like to place another order? (y/n)
    """
  end
end

puts """    
    Welcome to the Church and State Cafeteria...

    The typical meal comes with a main entree and two side items. 

    Would you like to place an order? (y/n)
"""
answer = gets.chomp

while answer != 'n'
  if answer == 'y'
    customer_order = Order.new
    customer_order.display_entree_menu
    puts ' '
    puts 'Choose and entree:'
    @entree_choice = gets.chomp.downcase
    customer_order.display_sides_menu
    puts ' '
    puts 'Your first side:'
    @side_1 = gets.chomp.downcase
    puts 'Your second side:'
    @side_2 = gets.chomp.downcase
    customer_order.total_price(@entree_choice, @side_1, @side_2)
    answer = gets.chomp
  else
    puts 'Please choose "y" or "n"'
    answer = gets.chomp
  end
end

puts 'Thank you! Have a nice day!'
