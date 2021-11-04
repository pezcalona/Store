class User < ApplicationRecord
has_security_password

  belongs_to :role
  has_many :orders

  validates :username, presence: true, uniqueness: true
  validates :role_id, presence: true


end
