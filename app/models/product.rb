class Product < ApplicationRecord
  belongs_to :supplier
  has_many :image
end
