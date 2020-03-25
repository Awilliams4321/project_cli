class CLI

  def start_up
    welcome
    self.get_makeup_list
    goodbye
  end

  def welcome
    puts "Welcome, Beauty Queen!"
    sleep (2)
    puts "Select the product you would like more info about."
    sleep (2)
  end

  def goodbye
    puts "See you later and don't forget to slay!"
    sleep (2)
  end

  def get_makeup_list
    API.get_makeup_lists
  end


end
