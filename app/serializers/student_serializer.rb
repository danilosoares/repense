class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :register_number, :status
end
