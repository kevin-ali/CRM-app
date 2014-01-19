require_relative 'contact'

class Rolodex



	def initialize
		@contacts = []
	  @id = 1000
	end

	def new_contact(first_name, last_name, email, note)
		@id += 1
		contact = Contact.new(@id, first_name, last_name, email, note)
		@contacts << contact

	end

	def find_contact(id)
		@contacts.each { |contact|
			puts "#{contact.id}: #{contact.first_name} #{contact.last_name} | #{contact.email} | #{contact.note}" if contact.id == id
		}
	end

	def display_contacts
		@contacts.each { |contact|
					puts ""
					puts "ID Number:   #{contact.id}"
					puts "First Name:  #{contact.first_name}"
					puts "Last Name:   #{contact.last_name}"
					puts "Email:       #{contact.email}"
					puts "Note:        #{contact.note}"
					puts "-------------------------------"
					puts ""
					 }
	end

def display_an_attribute
	puts ""
	puts "Which attribute would you like to view?"
	puts "[1] ID numbers"
	puts "[2] First names"
	puts "[3] Last names"
	puts "[4] Email addresses"
	puts "[5] Notes"
	puts ""
	choice_att = gets.to_i

	if choice_att == 1
		@contacts.each {|contact| puts "#{contact.id}"}
	elsif choice_att == 2
		@contacts.each {|contact| puts "#{contact.first_name}"}
	elsif choice_att == 3
		@contacts.each {|contact| puts "#{contact.last_name}"}
	elsif choice_att == 4
		@contacts.each {|contact| puts "#{contact.email}"}
	elsif choice_att == 5
		@contacts.each {|contact| puts "#{contact.note}"}
	else
		puts "Sorry, I did not quite catch that."
		puts ""
	end
end

def modify_contact(id)
	@contacts.each { |contact| if id == contact.id
		puts "#{contact.id}: #{contact.first_name} #{contact.last_name} | #{contact.email} | #{contact.note}"
		puts ""
		puts "Which attribute would you like to change?"
		puts "[1] ID number"
		puts "[2] First name"
		puts "[3] Last name"
		puts "[4] Email addresse"
		puts "[5] Note"
		puts ""
		choice_att = gets.to_i
		puts "What would you like to change this attribute to become?"
		value_att = gets.chomp

		if choice_att == 1
			contact.id = value_att.to_i
			puts "#{contact.id}: #{contact.first_name} #{contact.last_name} | #{contact.email} | #{contact.note}"
		elsif choice_att == 2
			contact.first_name = value_att
			puts "#{contact.id}: #{contact.first_name} #{contact.last_name} | #{contact.email} | #{contact.note}"
		elsif choice_att == 3
			contact.last_name = value_att
			puts "#{contact.id}: #{contact.first_name} #{contact.last_name} | #{contact.email} | #{contact.note}"
		elsif choice_att == 4
			contact.email = value_att
			puts "#{contact.id}: #{contact.first_name} #{contact.last_name} | #{contact.email} | #{contact.note}"
		elsif choice_att == 5
			contact.note = value_att
			puts "#{contact.id}: #{contact.first_name} #{contact.last_name} | #{contact.email} | #{contact.note}"
		else
		puts "Sorry, I did not quite catch that."
		puts ""
	end


	end
	}

end





end
