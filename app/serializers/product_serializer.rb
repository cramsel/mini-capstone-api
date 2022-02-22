class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :tax, :total, :description, :is_discounted?, :primary_image

  belongs_to :supplier
  has_many :images
  has_many :categories
end
