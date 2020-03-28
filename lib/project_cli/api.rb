class API
  
  def self.get_characters
    response = HTTParty.get("https://rickandmortyapi.com/api/character/")
    characters = ['results']
    characters.each do |k, v|
      
      binding.pry 
    end 
  end 
end 
