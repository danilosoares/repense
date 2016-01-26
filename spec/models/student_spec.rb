require "spec_helper"
require "rails_helper"

describe Student do
	it "Caso não haja matrícula para o estudante, o mesmo poderá ser removido." do
		Student.create!(name: "Danilo Soares", register_number: "09083136400", status: 1)
		Course.create!(name: "Ciência da Computação", description: "09083136400", status: 1)
		Classroom.create!(student_id: 1, course_id: 1, entry_at: DateTime.now)
		Classroom.where(student_id: 1, course_id: 1).first.destroy
		Student.where(register_number: "09083136400").first.destroy
		Student.all().count.should be_eql(0)
	end
end