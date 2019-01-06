class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.text :subjectName
      t.text :subjectCode
      t.string :subjectDetail
      t.date :startDate
      t.text :subjectTeacher
      t.integer :subjectCapacity
      t.integer :subjectNumber
      t.string :subjectImage

      t.timestamps
    end
  end
end
