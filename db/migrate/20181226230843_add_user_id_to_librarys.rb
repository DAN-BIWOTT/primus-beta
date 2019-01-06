class AddUserIdToLibrarys < ActiveRecord::Migration[5.2]
  def change
    add_column :libraries, :user_id, :integer
  end
end
