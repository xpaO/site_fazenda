class Admin < ActiveRecord::Base
  validates :name, presence:true, length: { in: 5..10 }, uniqueness: true
  validates :password, length: {minimum: 6, maximum: 10}
  has_secure_password
end
