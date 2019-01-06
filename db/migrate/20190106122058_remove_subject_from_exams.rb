class RemoveSubjectFromExams < ActiveRecord::Migration[5.2]
  def change
    remove_column :exams, :subject, :text
    remove_column :exams, :studentName, :text
  end
end
