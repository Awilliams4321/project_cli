class Characters
  @@all = []
  
  attr_accessor :name, :status, :species, :gender, :origin
  
  # def initialize(name, status, species, gender, origin)
  #   @name = name
  #   @status = status
  #   @species = species
  #   @gender = gender
  #   @origin = origin
  # end 
  
  def initialize(hash)
    hash.each do |k, v|
      self.send(("#{k}="), v) 
    end 
    save
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
end
