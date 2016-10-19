class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :logo, :full_address, :course_ids
end
