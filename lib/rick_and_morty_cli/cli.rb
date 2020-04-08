class CLI 
  
  def start_up
    welcome
    get_char_list
    options
  end 
  
  def welcome
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Welcome fan, I'm PICKLE RIIIICK!"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    sleep(3)
    puts "> To see the list of characters on the show, enter 'characters'."
    sleep(2)
    puts "> To exit, enter 'exit'."
    sleep(1)
  end 
  
  def goodbye
    puts ""
    puts "~~ See you later! And next time... ~~"
    sleep(2)
    puts ""
    puts "  ------------------------------"
    puts "  STAY OUT OF MY PERSONAL SPACE!"
    puts "  ------------------------------"
  end

  def options
    
    usr_entry = gets.strip.downcase
    
    if usr_entry == 'characters'
      puts char_list
      options 
    elsif usr_entry == 'exit'
      puts goodbye
    else 
      puts invalid_entry
      options 
    end
  end 
  
  def invalid_entry
    puts "Invalid entry. Please re-enter request."
  end 
  
  def char_list 
    
    Characters.all.each.with_index do |character, index|
      puts "#{index + 1}. #{character.name.split.map(&:capitalize).join(' ')}"
    end 
    
    puts ""
    puts ""
    choose_character
    
    puts "*******************************************************************************"
    sleep(2)
    puts ""
    puts "> To return to the list of characters, enter 'characters'."
    sleep(2)
    puts "> If you would like to exit, enter 'exit'."
    
  end 
  
  def choose_character
    puts "Enter the name of the character you would like more info about:"
    puts ""
    
    usr_entry = gets.strip.split.map(&:capitalize).join(' ')
    
    char_choice(usr_entry)
    
  end 
  
  def char_choice(character)
    char_object = Characters.find_by_name(character)
    if char_object
      puts ""
      puts "******************************************************************************"
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
    else
      invalid_entry
      puts ""
      choose_character
    end 
  end
    
  def get_char_list 
    API.new.get_info
  end 
  
end 