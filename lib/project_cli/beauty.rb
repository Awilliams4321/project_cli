class Beauty
  
  attr_accessor :brand, :name, :price, :description, :product_type
  
  @@all = []
  
  def initialize(:brand, :name, :price, :description, :product_type)
    @brand = brand
    @name = name
    @price = price
    @description = description
    @product_type = product_type
  end 
  
  def self.all
    @@all
  end 
  
  def save 
    @@all << self
  end 
  
  def 
end
