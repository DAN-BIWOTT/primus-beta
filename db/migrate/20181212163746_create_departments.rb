class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.text :depName
      t.text :depHead
      t.date :depStartDate
      t.integer :depStdCapacity
      t.text :depDescription

      t.timestamps
    end
  end
end
