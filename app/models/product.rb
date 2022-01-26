class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 5..500 }
  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  validates :supplier_id, presence: true

  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  def is_discounted?
    if price < 50 #none of my items are less than 10 lol
      discount = true
    else
      discount = false
    end
    return discount
  end

  def tax
    tax = price * 0.09
    return tax.round(2)
  end

  def total
    return price + tax
  end
end
