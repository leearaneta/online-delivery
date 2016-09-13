class Restaurant < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
  has_many :restaurant_categories
  has_many :categories, through: :restaurant_categories
  has_many :items

  def full_address
  	"#{address}, #{zipcode} #{city}, #{country}"
  end


end
