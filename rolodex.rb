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

		# p contact
		# p @contacts
	end

	def find_contact(id)
		@contacts.each do |contact|
			return contact if contact.id == id
		end
	end


end
