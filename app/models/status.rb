class Status < ApplicationRecord

    has_many :orders

    # belongs_to :cart_products

    validates :description, presence: true, uniqueness: true

end
