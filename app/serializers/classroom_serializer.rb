class ClassroomSerializer < ActiveModel::Serializer
  attributes :id, :entry_at
  has_one :student
  has_one :course
end
