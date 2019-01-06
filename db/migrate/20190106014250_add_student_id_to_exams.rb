class AddStudentIdToExams < ActiveRecord::Migration[5.2]
  def change
    add_column :exams, :student_id, :integer
  end
end
