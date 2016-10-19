class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :order_id, :restaurant_id, :course_id, :featured
  has_many :types
end
