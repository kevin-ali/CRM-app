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

end
