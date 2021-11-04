class Product < ApplicationRecord
  belongs_to :category

  has_many :order_detils
  has_many :order, through: :order_details

  has_many :cart_products
  has_many :carts, through: :cart_products

  validate :name, presence: true
  validate :price, presence: true, numericality: true
  validate :description, presence: true
  validate :category_id, presence: true
end
