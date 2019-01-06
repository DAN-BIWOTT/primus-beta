class AddSubjectsToExams < ActiveRecord::Migration[5.2]
  def change
    add_column :exams, :english, :integer,default:'0'
    add_column :exams, :kiswahili, :integer,default:'0'
    add_column :exams, :science, :integer,default:'0'
    add_column :exams, :social_studies, :integer,default:'0'
    add_column :exams, :math, :integer,default:'0'
    add_column :exams, :CRE, :integer,default:'0'
  end
end
