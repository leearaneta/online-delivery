class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :item_ids
end
