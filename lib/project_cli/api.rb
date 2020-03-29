class API
  
  def self.get_characters
    response = HTTParty.get("https://rickandmortyapi.com/api/character/")
    characters = JSON.parse(response.body)["results"]
    characters.each do |character|
      
      binding.pry 
    end 
  end 
end 
