class Item < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :item_types
  has_many :types, through: :item_types
  belongs_to :restaurant
  belongs_to :course
end
