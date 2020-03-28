class Characters
  
  attr_accessor :name, :status, :species, :gender, :origin
  
  @@all = []
  
  def initialize(name, status, species, gender, origin)
    @name = name
    @status = status
    @species = species
    @gender = gender
    @origin = origin
  end 
  
  def self.all
    @@all
  end 
  
  def save 
    @@all << self
  end 
  
end
