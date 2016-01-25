class Student < ActiveRecord::Base
  has_many :bet_matches, dependent: :restrict_with_exception
  has_many :bets, :through => :bet_matches, dependent: :restrict_with_exception

  has_many :classrooms
  has_many :courses, :through => :classrooms

  validates :name, presence: true
  validates :register_number, presence: true, uniqueness: true
  validates :status, presence: true
end
