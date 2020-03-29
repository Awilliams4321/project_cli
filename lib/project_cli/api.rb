class API
  
  def self.get_characters
    response = HTTParty.get("https://rickandmortyapi.com/api/character/")
    characters = JSON.parse(response.body)["results"]
    characters.each do |character|
      Characters.new(character)
    
    end 
  end 
end 
