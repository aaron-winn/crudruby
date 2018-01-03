require 'pry'
require 'httparty'
require 'json'

BASE_URL =  http://json-server.devpointlabs.com/api/v1



while true
    puts "---User Menu ---"
    puts "1) ALL Users"
    puts "2) Single User"
    puts "3) Create User"
    puts "4) Edit User"
    puts "5) Delete User"
    puts "6) Exit"
   
    input = gets.strip
  
    case input
    when "1"
        users = HTTParty.get("#{BASE_URL}/users").parsed_responce
        users.each do |user|
            puts user['id']
            puts user['first_name']
            puts user['last_name']
            puts user['phone_number']
        end    
    when "2"
        users = HTTParty.get("#{BASE_URL}/users/#{id}").parsed_responce
        
        puts "Enter the user id?"
        id = gets.strip
        users

    when "3"
        users = HTTParty.post("#{BASE_URL}/users")

        user[first_name] - required
        user[last_name] - required
        user[phone_number] - optional
        users
        
    when "4"
        users = HTTParty.get("#{BASE_URL}/users").parsed_responce
      puts "what name do you want to edit"
      name_to_edit = gets.strip
  
      if Contacts.has_key?(name_to_edit)
        puts "Enter new name"
        input = gets.strip
        #can input the = name_to_edit?
        Contacts[input] = {}
        Contacts.delete name_to_edit
      else
        puts"Contact does not exist"
      end
  
    when "5"
        users = HTTParty.delete("#{BASE_URL}/users/#{id}").parsed_responce
        puts "Enter user id to delete"
        
        id = gets.strip
        users
    when "6"
      exit
    else
      puts "Bad User Input, Please Try Again"
    end
  end

