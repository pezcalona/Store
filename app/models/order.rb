class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :status

  has_many :order_details
  has_many :products, through: :order_details

  validate :number, presence: true, uniqueness: true
  validate :total, presence: true
  validate :user_id, presence: true
  validate :status_id, presence: true
end
