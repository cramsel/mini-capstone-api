class Category < ApplicationRecord
  has_many :category_products
  # has_many :products

  def products
    items = []
    category_products.each do |n|
      items << Product.find_by(id: n[:product_id])
    end
    items
  end
end
