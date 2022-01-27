class Order < ApplicationRecord
  validates :user_id, presence: true
  validates :subtotal, presence: true
  validates :tax, presence: true
  validates :total, presence: true

  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products
end
