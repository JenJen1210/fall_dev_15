
@menu = {
    'entrees'=> {'Meat Loaf' => ['Congealed protein & fat in a decadent brown special sauce', '23.99'],
                'Lasagna' => ['Frozen pre-packaged Italian delight microwave heated for your convenience.', '18.99'],
                'Fried Chicken' => ['KFC special, only two days old.', '19.99'],
                'Liver and Onions' => ['Harvested this morning from a sick old cow, our pride and joy!', '26.99'] },
    'sides'=> { 'Baked Beans' => ['Guaranteed to be a blast.', '3.99'],
                'Corn' => ['A canned specialty, circa 1983. Botulism may or may not be included.', '2.99'],
                'Fries' => ['Over salted, under cooked.', '3.99'],
                'Salad' => ['Ensalada especiale, Spanish... awesome!', '4.99'],
                'Jello' => ['Local delicacy. Green is our favorite.', '2.99'],
                'Coleslaw' => ['Does anyone even like coleslaw?', '0.10']}
}

puts """    
Welcome to the Church and State Cafeteria...

The typical meal comes with a main entree and two side items. 

First, choose an entree: 
"""
@menu['entrees'].length.times do |item|
    puts "#{@menu['entrees'].keys[item]} **** #{@menu['entrees'][@menu['entrees'].keys[item]][0]} **** $#{@menu['entrees'][@menu['entrees'].keys[item]][1]} "
end

entree_choice = gets.chomp

puts 'Second, choose two side items:'
@menu['sides'].length.times do |item|
    puts "#{@menu['sides'].keys[item]} **** #{@menu['sides'][@menu['sides'].keys[item]][0]} **** $#{@menu['sides'][@menu['sides'].keys[item]][1]}"
end
puts 'Your first side:'
sides_choice_1 = gets.chomp
puts 'Your second side:'
sides_choice_2 = gets.chomp

entree_price = @menu['entrees'][entree_choice][1].to_f
side1_price = @menu['sides'][sides_choice_1][1].to_f
side2_price = @menu['sides'][sides_choice_2][1].to_f
total_price = entree_price + side1_price + side2_price

puts """
Great, you ordered #{entree_choice} with #{sides_choice_1} and #{sides_choice_2}.

You owe #{total_price}.

Thank you and enjoy your meal!
"""
