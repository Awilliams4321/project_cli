class API

  def get_makeup_lists
    response = HTTParty.get[http://makeup-api.herokuapp.com/api/v1/products.json?brand=]
  end

end
