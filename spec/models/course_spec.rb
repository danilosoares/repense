require "spec_helper"
require "rails_helper"

describe Course do
	it "Caso não haja matrícula para o curso, o mesmo poderá ser removido." do
		Student.create!(name: "Danilo Soares", register_number: "09083136400", status: 1)
		Course.create!(name: "Ciência da Computação", description: "teste", status: 1)
		Classroom.create!(student_id: 1, course_id: 1, entry_at: DateTime.now)
		Classroom.where(student_id: 1, course_id: 1).first.destroy
		Course.where(description: "teste").first.destroy
		Course.all().count.should be_eql(0)
	end
end