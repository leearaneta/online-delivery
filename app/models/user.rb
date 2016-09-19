class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :items, through: :orders
  has_many :restaurants, through: :orders

  def name
    first_name + ' ' + last_name
  end

  def full_address
    "#{address}, #{zipcode} #{city}, #{country}"
  end

end
