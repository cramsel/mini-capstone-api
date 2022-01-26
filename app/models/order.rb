class Order < ApplicationRecord
  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  validates :subtotal, presence: true
  validates :tax, presence: true
  validates :total, presence: true

  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products
end
