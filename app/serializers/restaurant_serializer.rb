class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :full_address, :categories
end
