class Item < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :item_types
  belongs_to :restaurant
  belongs_to :course
end
