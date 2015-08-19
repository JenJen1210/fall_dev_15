# Project
# Contact List

# 1) Have an option to list all contacts
# 2) Have an option to create a new contact

# Bonus: 
  # 1) Have an option to sort contacts by first name
  # 2) Have an option to edit a contact
  # 3) Store first name, last name, phone number
  # 4) Have an option to delete a contact (google remove from ruby array)


contacts_first_name = []
contacts_last_name = []
contacts_phone_number = []

puts 'Welcome to the contact list!'

def options()
	puts 'To list all contacts by first name, enter 1.'
	puts 'To list contacts alphabetically by first name, enter 2.'
	puts 'To create a new contact, enter 3'
	puts 'To delete a contact, enter 4'
	puts 'To exit, enter 5.'
end

puts 'What would you like to do?: '
puts ' '
options()
user_input = gets.strip

while user_input != '5'
	case user_input
		# list all contacts
		when '1'
			puts contacts_first_name
			puts 'Excellent. Now what would you like to do?'
			puts ' '
			options()
			user_input = gets.strip
		#sort contacts by first name
		when '2'
			puts contacts_first_name.sort
			puts 'There. Now what would you like to do?'
			puts ' '
			options()
			user_input = gets.strip
		#create new contact
		when '3'
			print 'First name: '
			new_first_name = gets.strip
			contacts_first_name << new_first_name
			print 'Last name: '
			new_last_name = gets.strip
			contacts_last_name << new_last_name
			print 'Phone number (no dashes or spaces): '
			new_phone_number = gets.strip
			contacts_phone_number << new_phone_number
			puts 'All done. Now what would you like to do?'
			puts ' '
			options()
			user_input = gets.strip
		# delete contact
		when '4'
			print 'First name to delete: '
			deleted_first_name = gets.strip
			contacts_first_name.delete(deleted_first_name)
			print 'Last name to delete: '
			deleted_last_name = gets.strip
			contacts_last_name.delete(deleted_last_name)
			print 'Phone number to delete: '
			deleted_number = gets.strip
			contacts_phone_number.delete(deleted_number)
			puts 'I never liked them either. Now what?'
			puts ' '
			options()
			user_input = gets.strip
		else
			puts 'Nope. I don\'t know what you mean.'
			print 'Let\'s try this again. What would you like to do?: '
			user_input = gets.strip
	end
end

puts 'Thank you! Come again!'