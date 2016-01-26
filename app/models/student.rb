class Student < ActiveRecord::Base
  has_many :classrooms, dependent: :restrict_with_exception
  has_many :courses, :through => :classrooms

  validates :name, presence: true
  validates :register_number, presence: true, uniqueness: true
  validates :status, presence: true
end
