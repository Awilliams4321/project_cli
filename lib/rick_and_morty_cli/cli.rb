class CLI 
  
  def self.start_up
    self.welcome
    self.options 
  end 
  
  def self.welcome
    puts "Welcome fan, I'm PICKLE RIIIICK!"
    sleep (3)
    puts "To see info about your favorite characters on the show, enter 'characters'."
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
      puts "list of characters"
    elsif usr_entry == 'exit'
      puts self.goodbye
    else 
      puts "Invalid entry. Please re-enter request."
      self.options 
    end
  end 
  
  def self.get_char_list 
    API.get_characters
  end 
end 
