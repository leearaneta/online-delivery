class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :zipcode
end
