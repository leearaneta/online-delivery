class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :order_id, :restaurant_id, :course_id, :featured
  has_many :item_types
end
