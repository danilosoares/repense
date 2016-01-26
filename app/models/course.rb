class Course < ActiveRecord::Base
  has_many :classrooms, dependent: :restrict_with_exception
  has_many :students, :through => :classrooms

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :status, presence: true
end
