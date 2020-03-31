class CLI 
  
  def self.start_up
    self.welcome
    self.get_char_list
    self.options
  end 
  
  def self.welcome
    puts "Welcome fan, I'm PICKLE RIIIICK!"
    sleep (3)
    puts "To see the list of characters on the show, enter 'characters'."
    sleep(2)
    puts "To exit, enter 'exit'."
    sleep(2)
  end 
  
  def self.goodbye
    puts "See you later! And next time..."
    sleep(2)
    puts "STAY OUT OF MY PERSONAL SPACE!"
  end
  
  def self.options
    
    usr_entry = gets.strip
    
    if usr_entry == 'characters'
      puts self.char_list
      self.options
    elsif usr_entry == 'exit'
      puts self.goodbye
    else 
      puts self.invalid_entry
      self.options 
    end
  end 
  
  def self.invalid_entry
    puts "Invalid entry. Please re-enter request."
  end 
  
  def self.char_list 
    
    Characters.all.each.with_index do |character, index|
      puts "#{index + 1}. #{character.name}"
    end 
    
    puts ""
    puts ""
    puts "Enter the name of the character you would like more info about:"
    
    usr_entry = gets.strip 
    
    self.char_choice(usr_entry)
    puts ""
    puts "*********************************"
    puts ""
    puts "> To return to the list of characters, enter 'characters'."
    puts "> If you would like to exit, enter 'exit'."
    
    
  end 
  
  def self.char_choice(character)
    char_object = Characters.find_by_name(character)
    #binding.pry
   # id.each do |i|
      puts " ~ Gender: #{char_object.gender}"
      puts " ~ Name: #{ char_object.name}"
      puts " ~ Origin: #{char_object.origin}"
      puts " ~ Species: #{char_object.species}"
      puts " ~ Status: #{char_object.status}"
      if char_object.type.strip.empty?
        puts " ~ Type: N/A"
      else
         puts " ~ Type: #{char_object.type}"
       end
  end 
    
  def self.get_char_list 
    API.get_info
  end 
  
end 
