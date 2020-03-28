class BeautyCli

  def self.start_up
    self.welcome
    self.goodbye
    API.get_products
  end

  def self.welcome
    puts "Welcome, Beauty Queen!"
    sleep (2)
    puts "To see more about the product you are interested in, enter the product number."
    sleep (2)
    puts "To exit, enter 'exit'".
  end

  def self.goodbye
    puts "See you later and don't forget to slay!"
    sleep (2)
  end

  def get_makeup_list
    API.get_makeup_lists
  end


end
