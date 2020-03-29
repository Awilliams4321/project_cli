class CLI 
  
  def self.start_up
    self.welcome
    self.options 
  end 
  
  def self.welcome
    puts "Welcome, fan!"
    sleep (2)
    puts "I'm PICKLE RIIIICK!"
    puts "To see more info about other characters on the show, enter 'characters'."
    sleep(2)
    puts "To exit, enter 'exit'."
  end 
  
  def self.goodbye
    puts "See you later! And next time..."
    sleep(2)
    puts "STAY OUT OF MY PERSONAL SPACE!"
  end
  
  def self.options
    
    usr_entry = gets.strip
    
    if usr_entry == 'characters'
      puts "list of characters"
    elsif usr_entry == 'exit'
      puts self.goodbye
    else 
      puts "Invalid option. Please re-enter request."
    end
  end 
  
  def self.get_char_list 
    API.get_characters
  end 
end 
