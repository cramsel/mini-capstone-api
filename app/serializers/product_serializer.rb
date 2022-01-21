class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :tax, :total, :description, :is_discounted?

  belongs_to :supplier
  has_many :images
  has_many :orders
end
