class API

  def self.get_characters
    response = HTTParty.get("https://rickandmortyapi.com/api/character/")
  end

end
