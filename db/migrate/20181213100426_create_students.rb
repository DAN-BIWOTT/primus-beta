class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.text :firstName
      t.text :lastName
      t.string :email
      t.date :regDate
      t.text :sClass
      t.text :gender
      t.integer :mobileNumber
      t.text :parentName
      t.integer :parentNumber
      t.date :birth
      t.string :address
      t.string :image
      t.integer :attendance,default: 0

      t.timestamps
    end
  end
end
