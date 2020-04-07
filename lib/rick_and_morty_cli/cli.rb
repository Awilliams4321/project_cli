class CLI 
  
  def self.start_up
    self.welcome
    self.get_char_list
    self.options
  end 
  
  def self.welcome
    puts "Welcome fan, I'm PICKLE RIIIICK!"
    sleep (3)
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "> To see the list of characters on the show, enter 'characters'."
    sleep(2)
    puts "> To exit, enter 'exit'."
    sleep(1)
  end 
  
  def self.goodbye
    puts ""
    puts "~~ See you later! And next time... ~~"
    sleep(2)
    puts ""
    puts "  ------------------------------"
    puts "  STAY OUT OF MY PERSONAL SPACE!"
    puts "  ------------------------------"
  end

  def self.options
    
    usr_entry = gets.strip.downcase
    
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
      puts "#{index + 1}. #{character.name.split.map(&:capitalize).join(' ')}"
    end 
    
    puts ""
    puts ""
    puts "Enter the name of the character you would like more info about:"
    puts ""
    
    usr_entry = gets.strip.split.map(&:capitalize).join(' ')
    
    self.char_choice(usr_entry)
    puts ""
    puts "*********************************"
    sleep(2)
    puts ""
    sleep(2)
    puts "> To return to the list of characters, enter 'characters'."
    sleep(2)
    puts "> If you would like to exit, enter 'exit'."
    self.options 
  end 
  
  def self.char_choice(character)
    char_object = Characters.find_by_name(character)
      puts ""
      puts " ~ Name: #{char_object.name}"
      puts " ~ Gender: #{char_object.gender}"
      puts " ~ Species: #{char_object.species}"
      puts " ~ Status: #{char_object.status}"
      puts " ~ Origin: #{char_object.origin}"
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
