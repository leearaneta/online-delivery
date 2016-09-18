class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :logo, :full_address, :categories, :courses, :items
end
