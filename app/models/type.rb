class Type < ApplicationRecord
  has_many :item_types
  has_many :items, through: :item_types
end
