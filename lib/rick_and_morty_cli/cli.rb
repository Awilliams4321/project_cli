class CLI 
  
  def self.start_up
    self.welcome
    self.get_char_list
    self.goodbye
  end 
  
  def self.welcome
    puts "Welcome, fan!"
    sleep (2)
    puts "I'm PICKLE RIIIICK!"
    puts "To see more info about other characters on the show, enter their name."
    sleep(2)
    puts "To exit, enter 'exit'."
  end 
  
  def self.goodbye
    puts "See you later! And next time..."
    sleep(2)
    puts "STAY OUT OF MY PERSONAL SPACE!"
  end
  
  def self.get_char_list 
    API.get_characters
  end 
end 
