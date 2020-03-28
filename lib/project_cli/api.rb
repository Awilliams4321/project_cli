class API

  def self.get_products
    response = HTTParty.get("http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline
")
  end

end
