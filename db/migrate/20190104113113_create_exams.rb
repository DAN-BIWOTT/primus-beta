class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.date :date
      t.text :examName
      t.text :studentName
      t.text :subject
      t.integer :results

      t.timestamps
    end
  end
end
