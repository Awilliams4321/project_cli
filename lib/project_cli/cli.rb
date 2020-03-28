class CLI 
  
  def self.start_up
    self.welcome
    self.get_char_list
    self.goodbye
  end 
  
  def self.welcome
    puts "Welcome, Beauty Queen!"
    sleep (2)
    puts "To see more about the product you are interested in, enter the product name."
    sleep(2)
    puts "To exit, enter 'exit'."
  end 
  
  def self.goodbye
    puts "See you later..."
    sleep(2)
    puts "And don't forget to slay!"
    sleep (2)
  end
  
  def get_char_list
    API.get_characters
  end 
end 
