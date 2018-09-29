class ProductSerializer
  def self.serialize(product)
    serialized_post = '{'
    serialized_post += '"id": ' + product.id.to_s + ', '
    serialized_post += '"name": "' + product.name + '", '
    serialized_post += '"price": ' + product.price.to_s + ', '
    serialized_post += '"inventory": ' + product.inventory.to_s + ', '
    serialized_post += '"description": "' + product.description + '"'
    serialized_post += '}'
  end
end