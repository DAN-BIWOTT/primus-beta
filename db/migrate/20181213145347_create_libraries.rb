class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.text :bookTitle
      t.text :Subject
      t.text :Author
      t.text :Publisher
      t.text :Department
      t.text :AssetType
      t.date :purchaseDate
      t.float :Price
      t.text :Status
      t.string :assetDetails

      t.timestamps
    end
  end
end
