class ContactList
attr_accessor :contacts, :user_input, :first_name, :last_name

	def initialize
		@contacts = Hash.new
		@user_input = 'empty'
		@first_name = 'empty'
		@last_name = 'empty'
	end

	def menu_options
		puts """
		1. List all contacts
		2. List contacts alphabetically by first name
		3. Create a new contact
		4. Delete a contact
		5. Exit
		"""
		@user_input = gets.strip
	end

	def main_menu
		puts 'What would you like to do?: '
		menu_options
		while @user_input != '5'
			case @user_input
				when '1'
					list_contacts
					puts 'Excellent. Now what would you like to do?'
					menu_options
				when '2'
					alphabetize_contacts
					puts 'There. Now what would you like to do?'
					menu_options
				when '3'
					puts 'First name: '
					@first_name = gets.strip
					puts 'Last name: '
					@last_name = gets.strip
					print 'Phone number (no dashes or spaces): '
					@phone_number = gets.strip
					new_contact(@first_name, @last_name, @phone_number)
					puts 'All done. Now what would you like to do?'
					menu_options
				when '4'
					print 'First name of person being deleted: '
					@first_name = gets.strip
					delete_contact(@first_name)
					puts 'I never liked them either. Now what?'
					menu_options
				else
					puts 'Nope. I don\'t know what you mean.'
					print 'Let\'s try this again. What would you like to do?: '
					menu_options
			end
		end
	end

	def list_contacts
	  @contacts.length.times do |item|
			puts "#{@contacts.keys[item]} -- #{@contacts[@contacts.keys[item]][0]} -- #{@contacts[@contacts.keys[item]][1]}"
		end
	end

	# How the hell do you sort a hash alphabetically by key?!
	def alphabetize_contacts 
		Hash[@contacts.sort]
		@contacts.length.times do |item|
		  puts "#{@contacts.keys[item]} -- #{@contacts[@contacts.keys[item]][0]} -- #{@contacts[@contacts.keys[item]][1]}"
		end
	end

	def new_contact(first, last, number)
		@contacts[first] = [last, number]
	end

	def delete_contact(first)
		@contacts.delete(first)
	end
end

contact_list = ContactList.new
contact_list.main_menu
