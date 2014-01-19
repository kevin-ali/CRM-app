require_relative 'contact'
require_relative 'rolodex'

class CRA


def self.start
  @rolo = Rolodex.new
  @rolo.new_contact("Kevin", "Ali", "kevin@freshspace.co", "Good people")
  @rolo.new_contact("Queequeg", "Ali", "queequeg@freshspace.co", "Good feline")
  @rolo.new_contact("Captain", "Ahab", "captainahab@thepequod.com", "Argh, matey!")
  CRA.main_menu
end

def self.print_main_menu
  puts ""
  puts "[1] Add a new contact"
  puts "[2] Modify an existing contact"
  puts "[3] Delete a contact"
  puts "[4] Find a contact"
  puts "[5] Display an attribute"
  puts "[6] Display all contacts"
  puts "[7] Exit"
  puts "Enter a number: "
end

def self.add_new_contact
  print "Enter First Name: "
  first_name = gets.chomp
  print "Enter Last Name: "
  last_name = gets.chomp
  print "Enter Email Address: "
  email = gets.chomp
  print "Enter a Note: "
  note = gets.chomp

  @rolo.new_contact(first_name, last_name, email, note)
  CRA.main_menu
end


def self.search_contact
	puts "What is ID number?"
	id_num = gets.to_i

  @rolo.find_contact(id_num)
  CRA.main_menu
end

def self.modify_existing_contact
  puts ""
  puts "Please input user ID of the contact you wish to modify:"
  id_num = gets.to_i

  @rolo.modify_contact(id_num)
  CRA.main_menu
end

def self.delete_contact
  puts "Please input the ID number of the contact you wish to delete:"
  id_num = gets.to_i

  @rolo.del_contact(id_num)
  CRA.main_menu
end



def self.call_option(user_selected)
  add_new_contact if user_selected == 1
  modify_existing_contact if user_selected == 2
  delete_contact if user_selected == 3
  search_contact if user_selected == 4
  @rolo.display_an_attribute if user_selected == 5
  @rolo.display_contacts if user_selected == 6
  exit if user_selected == 7
  CRA.main_menu
end


def self.main_menu
  print_main_menu
  user_selected = gets.to_i
  call_option(user_selected)
end



end

# my_app = CRA.new
# my_app.main_menu			<--- because we defined the methods self we can call directly on the class and not with the commented code


CRA.start
