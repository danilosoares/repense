class Classroom < ActiveRecord::Base
  belongs_to :student
  belongs_to :course

  validates :student_id, presence: true
  validates :course_id, presence: true
  validates :entry_at, presence: true

  validate :student_already_enrolled_in_the_course?

  def student_already_enrolled_in_the_course?
  	errors.add('-', "O Estudante Já Está Matriculado Neste Curso.") unless Classroom.where(student_id: self.student_id, course_id: self.course_id).empty?
  end
end
