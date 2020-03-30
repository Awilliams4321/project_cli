class Characters
  @@all = []
  
  attr_accessor :name, :status, :species, :type, :gender, :origin
  
  def initialize(hash)
    hash.each do |k, v|
      self.send(("#{k}="), v) if self.respond_to?(("#{k}=")) 
    end 
    save
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def self.find_by_name
    @@all.find{|character| character.name == name}
  end 
  
end
