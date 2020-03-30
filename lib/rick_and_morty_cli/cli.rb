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
    self.char_entry(usr_entry)
    
  end 
  
  def self.char_entry(character)
    Characters.all.each do |character|
      character.each do |attribute, value|
        if attribute == :name, :status, :species, :type, :gender, :origin
          puts "Name: #{name}"
          puts "Status: #{status}"
          puts "Species: #{species}"
          puts "Type: #{type}"
          puts "Gender: #{gender}"
          puts "Origin: #{origin}"
        end 
      end 
    end 
  end 
          # value.each do |name, status, species, type, gender, origin|
    
  def self.get_char_list 
    API.get_info
  end 
  
end 
