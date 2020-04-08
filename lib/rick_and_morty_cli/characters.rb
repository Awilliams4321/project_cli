class Characters
  @@all = []
  
  attr_accessor :name, :status, :species, :type, :gender, :origin
  
  def initialize(hash)
    hash.each do |k, v|
      self.send(("#{k}="), v) if self.respond_to?(("#{k}=")) 
    end 
    origin == origin["name"] #Figure out how to pull out JUST the name
    save
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def self.find_by_name(name)
    @@all.find{|character| character.name.split.map(&:capitalize).join(' ') == name}
  end 
  
end
