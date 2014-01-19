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
		@contacts.each do |contact|
			puts "#{contact.id}: #{contact.first_name} #{contact.last_name} | #{contact.email} | #{contact.note}" if contact.id == id
		end
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



end
