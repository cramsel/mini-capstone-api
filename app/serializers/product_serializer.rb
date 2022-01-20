class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description

  belongs_to :supplier
  has_many :images
end
